# Norwegian Zimbra Translation

NOTICE: I will probably stop maintaining this, since Zimbra finally included my translation in Zimbra, and made some major improvements. <a href="https://github.com/Zimbra/zm-web-client">See Zimbra:zm-web-client@Github</a>.

Norwegian translation of Zimbra, maintained by <a href="http://philipgabrielsen.no">Philip Gabrielsen</a> @ <a href="https://redpill-linpro.com/">Redpill Linpro AS</a>

Installation:

Run the following commands to install Norwegian language to your Zimbra installation:

```shell
 curl https://raw.githubusercontent.com/Flums/Norwegian-Zimbra-Translation/master/install.sh | sh
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

... or just be lazy, type æøå as normal, and do this afterwards:

Linux:

```shell
sed -i -e 's/æ/\\u00e6/g' -e 's/ø/\\u00f8/g' -e 's/å/\\u00e5/g' -e 's/Æ/\\u00C6/g' -e 's/Ø/\\u00D8/g' -e 's/Å/\\u00C5/g' -e 's/é/\\u00E9/g' <FILENAME>
```

OS X:

```shell
sed -i '' -e 's/æ/\\u00e6/g' -e 's/ø/\\u00f8/g' -e 's/å/\\u00e5/g' -e 's/Æ/\\u00C6/g' -e 's/Ø/\\u00D8/g' -e 's/Å/\\u00C5/g' -e 's/é/\\u00E9/g' <FILENAME>
```

to look for them: use this:

```shell
egrep -ir "ø|æ|å" *
```

