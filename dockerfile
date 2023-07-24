FROM registry.redhat.io/rhel8/cups

USER root

# Change the ownership of /var/run/dbus to root group
#RUN chgrp -R 0 /var/run/dbus && chmod -R g=u /var/run/dbus

# Change the ownership of /etc/cups to root group
RUN chgrp -R 0 /etc/cups && chmod -R g=u /etc/cups

# Change the ownership of /var/log/cups to root group
RUN chgrp -R 0 /var/log/cups && chmod -R g=u /var/log/cups

# Change the ownership of /var/spool/cups to root group
RUN chgrp -R 0 /var/spool/cups && chmod -R g=u /var/spool/cups

# Add root group to cups user to make it run as any userid
RUN usermod -a -G root cups && usermod -g root cups

USER 1000
