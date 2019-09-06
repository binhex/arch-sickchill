**Application**

[SickChill](https://github.com/sickChill/SickChill)

**Description**

SickChill is a Video File Manager for TV Shows, It watches for new episodes of your favorite shows and when they are posted it does its magic. SickChill is currently in beta release stage. There may be severe bugs in it and at any given time it may not work at all.

**Build notes**

Latest stable SickChill release from GitHub.

**Usage**
```
docker run -d \
    -p 8081:8081 \
    --name=<container name> \
    -v <path for media files>:/media \
    -v <path for data files>:/data \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=<umask for created files> \
    -e PUID=<uid for user> \
    -e PGID=<gid for user> \
    binhex/arch-sickchill
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

`http://<host ip>:8081`

**Example**
```
docker run -d \
    -p 8081:8081 \
    --name=sickchill \
    -v /media/tv:/media \
    -v /apps/docker/sabnzbd/watched:/data \
    -v /apps/docker/sickchill:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-sickchill
```

**Notes**

User ID (PUID) and Group ID (PGID) can be found by issuing the following command for the user you want to run the container as:-

```
id <username>
```
___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Documentation](https://github.com/binhex/documentation) | [Support forum](https://forums.unraid.net/topic/74912-support-binhex-sickchill/)