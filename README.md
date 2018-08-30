# Boxydev Overlay

We begin a gentoo overlay because missing ebuild in official Gentoo Portage. You can easily contribute without problems :)

```
curl https://raw.githubusercontent.com/boxydev/boxydev-gentoo-overlay/master/repo.conf -o /etc/portage/repos.conf/boxydev-overlay.conf

curl https://raw.githubusercontent.com/boxydev/boxydev-gentoo-overlay/master/repositories.xml -o /etc/layman/overlays/boxydev-overlay.xml
layman -S
layman -a boxydev-overlay

```
