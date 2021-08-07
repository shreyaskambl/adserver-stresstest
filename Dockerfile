FROM ubuntu
RUN apt update && apt install -y  sssd libnss-sss libpam-sss realmd sssd-tools oddjob oddjob-mkhomedir adcli samba-common packagekit
RUN systemctl start realmd
#CMD ["/bin/sleep", "3650d"]
CMD ["sbin","init"]
