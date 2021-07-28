FROM ubuntu
RUN apt update && apt install -y  sssd libnss-sss libpam-sss realmd sssd-tools oddjob oddjob-mkhomedir adcli samba-common packagekit
ENTRYPOINT ['tail', '-f', '/dev/null']