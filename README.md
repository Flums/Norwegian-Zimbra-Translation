# Norwegian Zimbra Translation

Sponsored by [Telsys AS](http://www.telsys.no).

Norwegian translation of Zimbra.

Installation:

Run the following commands to install Norwegian language to your Zimbra installation:

```shell
cd /opt/zimbra/jetty/webapps/zimbra/WEB-INF/classes/messages/

rm -rf /opt/zimbra/jetty/webapps/zimbra/WEB-INF/classes/messages/*_no.properties*

wget https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/messages/AjxMsg_no.properties
wget https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/messages/I18nMsg_no.properties
wget https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/messages/ZMsg_no.properties
wget https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/messages/ZaMsg_no.properties
wget https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/messages/ZbMsg_no.properties
wget https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/messages/ZhMsg_no.properties
wget https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/messages/ZmMsg_no.properties
wget https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/messages/ZmSMS_no.properties

chown zimbra: *
```

and last (as user zimbra):

```shell
su - zimbra
zmmailboxdctl restart
```

This last command will cause downtime to HTTP/Zimbra GUI for a short period of time.


Abount ASCII codes:
æ = 
ø = \u00f8
å = \u00e5
