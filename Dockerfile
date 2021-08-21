FROM ubuntu
RUN apt update && apt install -y  sssd libnss-sss libpam-sss realmd sssd-tools oddjob oddjob-mkhomedir adcli samba-common krb5-user ldap-utils packagekit
RUN mkdir /var/run/dbus
RUN mkdir /var/run/sshd
COPY ./.s2i/bin/ /usr/local/s2i
CMD ["/usr/local/s2i/run"]

#COPY realmd.run /usr/local/bin/realmd.run
#CMD ["/bin/sleep", "3650d"]
#CMD ["sbin","init"]
#CMD ["/usr/local/bin/realmd.run"]
