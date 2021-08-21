FROM openshift/base-centos7
RUN yum install -y sssd libnss-sss libpam-sss realmd sssd-tools oddjob oddjob-mkhomedir adcli samba-common krb5-user ldap-utils packagekit
RUN mkdir /var/run/dbus /var/run/sshd
COPY ./.s2i/bin/ /usr/local/s2i
RUN chown -R 1001:1001 /opt/app-root
USER 1001
CMD ["/bin/sleep", "3650d"]

#FROM ubuntu
#RUN apt update && apt install -y  sssd libnss-sss libpam-sss realmd sssd-tools oddjob oddjob-mkhomedir adcli samba-common krb5-user ldap-utils packagekit
#FROM ubuntu:latest
#RUN apt update && apt install -y  sssd libnss-sss libpam-sss realmd sssd-tools oddjob oddjob-mkhomedir adcli samba-common krb5-user ldap-utils packagekit
#RUN yum install -y sssd libnss-sss libpam-sss realmd sssd-tools oddjob oddjob-mkhomedir adcli samba-common krb5-user ldap-utils packagekit
#RUN mkdir /var/run/dbus
#RUN mkdir /var/run/sshd

#LABEL io.openshift.s2i.scripts-url=image:///usr/local/s2i
#COPY ./.s2i/bin/ /usr/local/s2i

#RUN mkdir -p /opt/app-root /opt/app-root/src
#RUN chown -R 1001:1001 /opt/app-root
#USER 1001
#CMD ["/usr/local/s2i/run"]

#COPY realmd.run /usr/local/bin/realmd.run
#CMD ["/bin/sleep", "3650d"]
#CMD ["usage"]
#CMD ["sbin","init"]
#CMD ["/usr/local/bin/realmd.run"]
