#!/bin/bash
cd /opt/zimbra/jetty/webapps/zimbra/WEB-INF/classes/messages/

VERSION=$(sudo -u zimbra /opt/zimbra/bin/zmcontrol -v| awk '{ print $2 }' | awk -F. '{ print $1 }')

wget -N https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/AjxMsg_no.properties
wget -N https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/I18nMsg_no.properties
wget -N https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZMsg_no.properties
wget -N https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZaMsg_no.properties
wget -N https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZbMsg_no.properties
wget -N https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZhMsg_no.properties
wget -N https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZmMsg_no.properties
wget -N https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZmSMS_no.properties

chown zimbra: *
