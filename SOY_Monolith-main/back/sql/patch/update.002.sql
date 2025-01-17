ALTER TABLE Theme ADD COLUMN locale loc;
ALTER TABLE Theme ADD COLUMN ref_id int;
ALTER TABLE Exercise ADD CONSTRAINT Exercise_fk FOREIGN KEY (ref_id) REFERENCES Exercise (ex_id);
ALTER TABLE Exercise ALTER COLUMN locale SET DATA TYPE loc USING locale::loc;
ALTER TABLE NAM ADD CONSTRAINT NAM_fk FOREIGN KEY (id_ref) REFERENCES NAM (nam_id);
ALTER TABLE Skill ADD CONSTRAINT Skill_fk FOREIGN KEY (ref_code) REFERENCES Skill (skill_code);
ALTER TABLE Skill ALTER COLUMN locale SET DATA TYPE loc USING locale::loc;
ALTER TABLE Theme ADD CONSTRAINT Theme_fk FOREIGN KEY (ref_id) REFERENCES Theme (th_id);

UPDATE Theme SET name = 'Accessing a Unix operating system', locale = 'en', ref_id = 1 WHERE th_id = 1;
UPDATE Theme SET name = 'Managing files', locale = 'en', ref_id = 2 WHERE th_id = 2;
UPDATE Theme SET name = 'Filtering commands', locale = 'en', ref_id = 3 WHERE th_id = 3;
UPDATE Theme SET name = 'Handling processes', locale = 'en', ref_id = 4 WHERE th_id = 4;
UPDATE Theme SET name = 'Variables & shell scripts', locale = 'en', ref_id = 5 WHERE th_id = 5;
UPDATE Theme SET name = 'Communcations & networks', locale = 'en', ref_id = 6 WHERE th_id = 6;
UPDATE Theme SET name = 'OS adminstration', locale = 'en', ref_id = 7 WHERE th_id = 7;

INSERT INTO Theme (name, locale, ref_id) VALUES ('Accès à un système Unix', 'fr', 1);
INSERT INTO Theme (name, locale, ref_id) VALUES ('Gestion de fichiers', 'fr', 2);
INSERT INTO Theme (name, locale, ref_id) VALUES ('Filtres commandes', 'fr', 3);
INSERT INTO Theme (name, locale, ref_id) VALUES ('Gestion des processus', 'fr', 4);
INSERT INTO Theme (name, locale, ref_id) VALUES ('Variables & Scripts shells', 'fr', 5);
INSERT INTO Theme (name, locale, ref_id) VALUES ('Communication & Réseau', 'fr', 6);
INSERT INTO Theme (name, locale, ref_id) VALUES ('Administration système', 'fr', 7);

UPDATE Skill SET name = 'Login / Password', locale = 'en', ref_code = 'AU1' WHERE skill_code = 'AU1';
UPDATE Skill SET name = 'Enter commands in a "terminal"', locale = 'en', ref_code = 'AU2' WHERE skill_code = 'AU2';
UPDATE Skill SET name = 'Ask help for a command', locale = 'en', ref_code = 'AU3' WHERE skill_code = 'AU3';
UPDATE Skill SET name = 'Access / launch a linux OS (via W10, dual boot, VM, remote system)', locale = 'en', ref_code = 'AU5' WHERE skill_code = 'AU5';
UPDATE Skill SET name = 'Use keyboard shortcuts in a terminal', locale = 'en', ref_code = 'AU4' WHERE skill_code = 'AU4';
UPDATE Skill SET name = 'Access command history', locale = 'en', ref_code = 'AU8' WHERE skill_code = 'AU8';
UPDATE Skill SET name = 'Customize the command prompt', locale = 'en', ref_code = 'AU9' WHERE skill_code = 'AU9';
UPDATE Skill SET name = 'Know the relative or absolute path of files', locale = 'en', ref_code = 'GF1' WHERE skill_code = 'GF1';
UPDATE Skill SET name = 'Go in a folder', locale = 'en', ref_code = 'GF2' WHERE skill_code = 'GF2';
UPDATE Skill SET name = 'Manage the content of a folder (creating, renaming, filling it with files, list its content)', locale = 'en', ref_code = 'GF3' WHERE skill_code = 'GF3';
UPDATE Skill SET name = 'Move a file / folder', locale = 'en', ref_code = 'GF4' WHERE skill_code = 'GF4';
UPDATE Skill SET name = 'Change access rights to a file / folder, Manage rights of a file / folder', locale = 'en', ref_code = 'GF5' WHERE skill_code = 'GF5';
UPDATE Skill SET name = 'Search a file', locale = 'en', ref_code = 'GF9' WHERE skill_code = 'GF9';
UPDATE Skill SET name = 'View the contents of a file and navigate in it', locale = 'en', ref_code = 'GF10' WHERE skill_code = 'GF10';
UPDATE Skill SET name = 'Create a file from a text editor in the terminal', locale = 'en', ref_code = 'GF12' WHERE skill_code = 'GF12';
UPDATE Skill SET name = 'Archive / compress a tree to transmit it', locale = 'en', ref_code = 'GF7' WHERE skill_code = 'GF7';
UPDATE Skill SET name = 'Install a folder and file tree from an archive', locale = 'en', ref_code = 'GF8' WHERE skill_code = 'GF8';
UPDATE Skill SET name = 'Start running a + $ PATH file', locale = 'en', ref_code = 'GF11' WHERE skill_code = 'GF11';
UPDATE Skill SET name = 'Know the type of a file', locale = 'en', ref_code = 'GF13' WHERE skill_code = 'GF13';
UPDATE Skill SET name = 'Save the result of a command in a file', locale = 'en', ref_code = 'FC1' WHERE skill_code = 'FC1';
UPDATE Skill SET name = 'Transmit the result of a command to another one', locale = 'en', ref_code = 'FC2' WHERE skill_code = 'FC2';
UPDATE Skill SET name = 'Find information in specific lines of files', locale = 'en', ref_code = 'FC4' WHERE skill_code = 'FC4';
UPDATE Skill SET name = 'Give the contents of an input file to a command', locale = 'en', ref_code = 'FC6' WHERE skill_code = 'FC6';
UPDATE Skill SET name = 'Assemble the contents of files', locale = 'en', ref_code = 'FC9' WHERE skill_code = 'FC9';
UPDATE Skill SET name = 'Substitute part of a file', locale = 'en', ref_code = 'FC10' WHERE skill_code = 'FC10';
UPDATE Skill SET name = 'Compare the contents of two files', locale = 'en', ref_code = 'FC5' WHERE skill_code = 'FC5';
UPDATE Skill SET name = 'Retrieve some columns', locale = 'en', ref_code = 'FC7' WHERE skill_code = 'FC7';
UPDATE Skill SET name = 'Display the first / last lines of a file', locale = 'en', ref_code = 'FC8' WHERE skill_code = 'FC8';
UPDATE Skill SET name = 'Redirect errors from a command to a file', locale = 'en', ref_code = 'FC3' WHERE skill_code = 'FC3';
UPDATE Skill SET name = 'Consult the list of active processes', locale = 'en', ref_code = 'GP1' WHERE skill_code = 'GP1';
UPDATE Skill SET name = 'To know how to terminate a process', locale = 'en', ref_code = 'GP2' WHERE skill_code = 'GP2';
UPDATE Skill SET name = 'Start a process in the background', locale = 'en', ref_code = 'GP3' WHERE skill_code = 'GP3';
UPDATE Skill SET name = 'Switch a process between background and foreground', locale = 'en', ref_code = 'GP4' WHERE skill_code = 'GP4';
UPDATE Skill SET name = 'Sort processes according to criteria (CPU consumption, memory, ...)', locale = 'en', ref_code = 'GP8' WHERE skill_code = 'GP8';
UPDATE Skill SET name = 'Know which user launched a process', locale = 'en', ref_code = 'GP6' WHERE skill_code = 'GP6';
UPDATE Skill SET name = 'Change the priority of a process', locale = 'en', ref_code = 'GP7' WHERE skill_code = 'GP7';
UPDATE Skill SET name = 'Understand a script', locale = 'en', ref_code = 'VS1' WHERE skill_code = 'VS1';
UPDATE Skill SET name = 'Know how to iterate one or more commands', locale = 'en', ref_code = 'VS3' WHERE skill_code = 'VS3';
UPDATE Skill SET name = 'Manage variables(definition, state)', locale = 'en', ref_code = 'VS4' WHERE skill_code = 'VS4';
UPDATE Skill SET name = 'Manipulate environment variables (PATH, SHELL, HOME, ...)', locale = 'en', ref_code = 'VS8' WHERE skill_code = 'VS8';
UPDATE Skill SET name = 'Start a calculation job (qsub, ...)', locale = 'en', ref_code = 'VS7' WHERE skill_code = 'VS7';
UPDATE Skill SET name = 'Program the executions of a script (cron)', locale = 'en', ref_code = 'VS6' WHERE skill_code = 'VS6';
UPDATE Skill SET name = 'Start a script at system startup', locale = 'en', ref_code = 'VS2' WHERE skill_code = 'VS2';
UPDATE Skill SET name = 'Connect to a remote machine to execute commands', locale = 'en', ref_code = 'CR1' WHERE skill_code = 'CR1';
UPDATE Skill SET name = 'Copy files/folders between machines', locale = 'en', ref_code = 'CR2' WHERE skill_code = 'CR2';
UPDATE Skill SET name = 'Test the accessibility of a machine(ping)', locale = 'en', ref_code = 'CR3' WHERE skill_code = 'CR3';
UPDATE Skill SET name = 'Find the IP address of a machine', locale = 'en', ref_code = 'CR4' WHERE skill_code = 'CR4';
UPDATE Skill SET name = 'Know which machines are available on a network', locale = 'en', ref_code = 'CR5' WHERE skill_code = 'CR5';
UPDATE Skill SET name = 'Synchronize several data storage', locale = 'en', ref_code = 'CR7' WHERE skill_code = 'CR7';
UPDATE Skill SET name = 'Distinguish the protocols associated with different types of communication', locale = 'en', ref_code = 'CR8' WHERE skill_code = 'CR8';
UPDATE Skill SET name = 'Know which services are accessible (ports are open) on the network', locale = 'en', ref_code = 'CR6' WHERE skill_code = 'CR6';
UPDATE Skill SET name = 'Install a software', locale = 'en', ref_code = 'AS5' WHERE skill_code = 'AS5';
UPDATE Skill SET name = 'Add a program / command to the system (folders / bin, ...)', locale = 'en', ref_code = 'AS6' WHERE skill_code = 'AS6';
UPDATE Skill SET name = 'Manage users', locale = 'en', ref_code = 'AS1' WHERE skill_code = 'AS1';
UPDATE Skill SET name = 'Configure network connections', locale = 'en', ref_code = 'AS2' WHERE skill_code = 'AS2';
UPDATE Skill SET name = 'Configure the machine name', locale = 'en', ref_code = 'AS3' WHERE skill_code = 'AS3';
UPDATE Skill SET name = 'Configure network ports to access the machine', locale = 'en', ref_code = 'AS4' WHERE skill_code = 'AS4';
UPDATE Skill SET name = 'Allow access to external storage media (USB key, external dd, network disk)', locale = 'en', ref_code = 'AS9' WHERE skill_code = 'AS9';
UPDATE Skill SET name = 'Know the ports usually associated with different network services', locale = 'en', ref_code = 'AS13' WHERE skill_code = 'AS13';
UPDATE Skill SET name = 'Manage file system backups', locale = 'en', ref_code = 'AS10' WHERE skill_code = 'AS10';
UPDATE Skill SET name = 'Understand system logs', locale = 'en', ref_code = 'AS11' WHERE skill_code = 'AS11';
UPDATE Skill SET name = 'Allow access to the system from outside (ssh, ...)', locale = 'en', ref_code = 'AS12' WHERE skill_code = 'AS12';

INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AU1', 'S''identifier sur une machine', '1', 'fr', 'AU1fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AU2', 'Taper des commandes dans un "terminal"', '1', 'fr', 'AU2fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AU3', 'Demander de l''aide sur une commande', '1', 'fr', 'AU3fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AU4', 'Utiliser les raccourcis claviers dans un terminal', '1', 'fr', 'AU4fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AU5', 'Accéder/lancer un OS linux (via W10, dual boot, VM, syst. distant)', '1', 'fr', 'AU5fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AU8', 'Accéder à l''historique des commandes', '1', 'fr', 'AU8fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AU9', 'Gérer son prompt (invite de commande)', '1', 'fr', 'AU9fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GF1', 'Connaître le chemin relatif ou absolu de fichiers', '2', 'fr', 'GF1fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GF2', 'Se rendre dans un dossier', '2', 'fr', 'GF2fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GF3', 'Gérer le contenu d''un dossier (ajouter/supprimer/renommer son contenu)', '2', 'fr', 'GF3fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GF4', 'Déplacer un fichier / dossier', '2', 'fr', 'GF4fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GF5', 'Changer les droits d''accès à un fichier / dossier, Gérer les droits d''un fichier/dossier', '2', 'fr', 'GF5fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GF9', 'Rechercher un fichier', '2', 'fr', 'GF9fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GF10', 'Visualiser le contenu d''un fichier et naviguer dedans', '2', 'fr', 'GF10fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GF12', 'Créer un fichier depuis un éditeur de texte dans le terminal', '2', 'fr', 'GF12fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GF7', 'Archiver / compresser une arborescence pour la transmettre', '2', 'fr', 'GF7fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GF8', 'Installer une arborescence de fichiers depuis une archive', '2', 'fr', 'GF8fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GF11', 'Lancer un l’exécution d''un fihcier + $PATH', '2', 'fr', 'GF11fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GF13', '(re)Connaitre le type d''un fichier', '2', 'fr', 'GF13fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('FC1', 'Sauvegarder le résultat d''une commande dans un fichier', '3', 'fr', 'FC1fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('FC2', 'Transmettre le résultat d''une commande à une autre', '3', 'fr', 'FC2fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('FC4', 'Retrouver les lignes de fichiers contenant une information', '3', 'fr', 'FC4fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('FC6', 'Donner le contenu d''un fichier en entrée à une commande', '3', 'fr', 'FC6fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('FC9', 'Assembler le contenu de fichiers', '3', 'fr', 'FC9fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('FC10', 'Substituer une partie d''un fichier', '3', 'fr', 'FC10fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('FC5', 'Comparer le contenu de deux fichiers', '3', 'fr', 'FC5fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('FC7', 'Récupérer certaines colonnes', '3', 'fr', 'FC7fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('FC8', 'Afficher les premières / dernières lignes d''un fichier', '3', 'fr', 'FC8fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('FC3', 'Rediriger les erreurs d''une commande vers un fichier', '3', 'fr', 'FC3fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GP1', 'Consulter la liste des processus en activité', '4', 'fr', 'GP1fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GP2', 'Savoir terminer un processus', '4', 'fr', 'GP2fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GP3', 'Lancer un processus en arrière plan', '4', 'fr', 'GP3fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GP4', 'Basculer un processus entre arrière plan et premier plan', '4', 'fr', 'GP4fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GP8', 'Trier les processus en fonction de critères (consommation CPU, mémoire, ...)', '4', 'fr', 'GP8fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GP6', 'Connaître l''utilisateur ayant lancé un processus', '4', 'fr', 'GP6fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('GP7', 'Changer la priorité d''un processus', '4', 'fr', 'GP7fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('VS1', 'Comprendre un script', '5', 'fr', 'VS1fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('VS3', 'Savoir itérer une ou plusieurs commandes', '5', 'fr', 'VS3fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('VS4', 'Gérer les variables (définition, état)', '5', 'fr', 'VS4fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('VS8', 'Manipuler les variables d''environnement (PATH, SHELL, HOME, ...)', '5', 'fr', 'VS8fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('VS7', 'Lancer un job de calcul (qsub,...)', '5', 'fr', 'VS7fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('VS6', 'Programme les exécutions d''un script (cron)', '5', 'fr', 'VS6fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('VS2', 'Lancer un script au démarrage du système', '5', 'fr', 'VS2fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('CR1', 'Se connecter à une machine distance pour y exécuter des commandes', '6', 'fr', 'CR1fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('CR2', 'Copier des fichiers/dossiers entre machines', '6', 'fr', 'CR2fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('CR3', 'Tester l''accessibilité d''une machine (ping)', '6', 'fr', 'CR3fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('CR4', 'Trouver l''adresse IP d''une machine', '6', 'fr', 'CR4fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('CR5', 'Savoir quelles machines sont disponibles sur un réseau', '6', 'fr', 'CR5fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('CR7', 'Synchroniser plusieurs espaces de stockage', '6', 'fr', 'CR7fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('CR8', 'Distinguer les protocoles associés aux différents types de communication', '6', 'fr', 'CR8fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('CR6', 'Savoir quels services sont accessibles (ports sont ouverts) sur le réseau', '6', 'fr', 'CR6fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AS5', 'Installer un logiciel', '7', 'fr', 'AS5fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AS6', 'Ajouter un programme / une commande au système (dossiers /bin, ...)', '7', 'fr', 'AS6fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AS1', 'Gérer les utilisateurs', '7', 'fr'), 'AS1fr';
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AS2', 'Configurer les connexions réseaux', '7', 'fr', 'AS2fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AS3', 'Configurer le nom de la machine', '7', 'fr', 'AS3fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AS4', 'Configurer les ports réseaux permettant d''accéder à la machine', '7', 'fr', 'AS4fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AS9', 'Permettre l''accès à des supports de stockage externes (clef USB, dd externe, disque réseau)', '7', 'fr', 'AS9fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AS13', 'Connaître les ports habituellement associés aux différents services réseaux', '7', 'fr', 'AS13fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AS10', 'Gérer les sauvegardes du système de fichiers', '7', 'fr', 'AS10fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AS11', 'Comprendre les logs système', '7', 'fr', 'AS11fr');
INSERT INTO Skill (ref_code, name, th_id, locale, skill_code) VALUES ('AS12', 'Permettre l''accès au système depuis l''extérieur (ssh, ...)', '7', 'fr', 'AS12fr');

ALTER TABLE Skill ALTER COLUMN locale SET NOT NULL;
ALTER TABLE Theme ALTER COLUMN locale SET NOT NULL;