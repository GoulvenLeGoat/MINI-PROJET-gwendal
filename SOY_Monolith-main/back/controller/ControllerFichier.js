const { execFile } = require("child_process");
const fs = require("fs");
const ModelDB = require("../model/ModelDB.js");

module.exports = {
  use_fs: async function (file, rep) {
    if (file.includes(".html")) {
      file = file.substring(file.lastIndexOf("/") + 1);
    } else if (file.includes(".css")) {
      file = file.substring(file.lastIndexOf("css/"));
    }
    if (file.includes(".png")) {
      file = file.substring(file.lastIndexOf("img/"));
    }
    if (file.includes(".js")) {
      file = file.substring(file.lastIndexOf("js/"));
    }

    fs.readFile(file, async function (err, data) {
      if (err) {
        console.log(err);
        rep.writeHead(404, { "Content-Type": "text/html" });
        rep.end("File not found");
      } else {
        let contentType = "text/html";
        if (file.includes(".css")) contentType = "text/css";
        if (file.includes(".js")) contentType = "text/javascript";
        if (file.includes(".png")) contentType = "image/png";

        rep.writeHead(200, { "Content-Type": contentType });
        rep.end(data);
      }
    });
  },

  send_targz: function (req, rep) {
    console.log("Fetching file: " + req.url);
    var file_path = req.url.substring(req.url.indexOf("/") + 1);
    var client = ModelDB.connect_to_db();
    var sqltest = "SELECT fichier_data FROM sujet WHERE fichier=$1;";
    
    client
      .query(sqltest, [file_path])
      .then(async (res) => {
        if (res && res.rows && res.rows[0].fichier_data) {
          var data = res.rows[0].fichier_data;
          await rep.writeHead(200, {
            "Content-Type": "application/x-gzip",
            "Content-Length": data.length,
          });
          rep.end(data);
        } else {
          console.log("File " + file_path + " not found");
          ControllerFichier.use_fs("404.html", rep);
        }
        client.end();
      })
      .catch((err) => {
        console.log(err);
        ControllerFichier.use_fs("404.html", rep);
        client.end();
      });
  },

  exec: function (command, rep) {
    rep.writeHead(200, { "Content-Type": "text/html; charset=utf-8" });
    rep.write("Script Node en cours d'exécution...<br/>");
    rep.flush();
    rep.write("<ol>");

    // 🚨 Sécurité : Définition d'une liste blanche des commandes autorisées
    const allowedCommands = ["ls", "pwd", "whoami", "uptime", "date"];
    
    // Séparer la commande et ses arguments
    const args = command.split(" ");
    const cmd = args.shift(); // Récupérer uniquement la commande principale

    // Vérifier si la commande est autorisée
    if (!allowedCommands.includes(cmd)) {
      rep.write("<li><b>Erreur :</b> Commande non autorisée.</li><br/>");
      rep.end("</ol>");
      return;
    }

    // Exécution sécurisée avec `execFile` (évite l'injection de commandes)
    const process = execFile(cmd, args, { shell: false });

    process.stdout.on("data", (data) => {
      rep.write(`<li><b>Sortie standard :</b> ${data.toString()}</li><br/>`);
      rep.flush();
    });

    process.stderr.on("data", (data) => {
      rep.write(`<li><b>Sortie erreur :</b> ${data.toString()}</li><br/>`);
      rep.flush();
    });

    process.on("exit", (code) => {
      rep.write("</ol>");
      rep.write(`L'exécution du script s'est terminée avec le code : ${code}<br/>`);
      rep.end();
    });
  },
};
