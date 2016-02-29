#!/bin/bash
 
VERSION=$(sudo -u zimbra /opt/zimbra/bin/zmcontrol -v| awk '{ print $2 }' | awk -F. '{ print $1 }')

cd /opt/zimbra/jetty/webapps/zimbra/WEB-INF/classes/messages/
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/AjxMsg_no.properties
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/I18nMsg_no.properties
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZMsg_no.properties
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZaMsg_no.properties
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZbMsg_no.properties
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZhMsg_no.properties
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZmMsg_no.properties
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZtMsg_no.properties
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZmSMS_no.properties

chown zimbra: *

cd /opt/zimbra/jetty/webapps/zimbraAdmin/WEB-INF/classes/messages/
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/messages/ZaMsg_no.properties

chown zimbra: *

cd /opt/zimbra/jetty/webapps/zimbra/WEB-INF/classes/keys/
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/keys/AjxKeys_no.properties
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/keys/ZhKeys_no.properties
wget -nv https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/zimbra$VERSION/keys/ZmKeys_no.properties

chown zimbra: *
