COPY check_env.sh /check_env.sh
RUN chmod +x /check_env.sh
ENTRYPOINT ["/check_env.sh", "&&", "your_application_start_command"]

FROM postgres:12.17
