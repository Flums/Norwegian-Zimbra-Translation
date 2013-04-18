# Norwegian Zimbra Translation

Norwegian translation of Zimbra.

Installation:

Run the following commands to install Norwegian language to your Zimbra installation:

```shell
 curl https://raw.github.com/Flums/Norwegian-Zimbra-Translation/master/install.sh | sh
```

and last:

```shell
sudo -u zimbra /opt/zimbra/bin/zmmailboxdctl restart
```

This last command will cause downtime to HTTP/Zimbra GUI for a short period of time.


Abount ASCII codes:
æ = \u00e6
ø = \u00f8
å = \u00e5
