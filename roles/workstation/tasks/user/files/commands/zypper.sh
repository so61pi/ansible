print -s sudo sh -c "'zypper refresh && zypper update && zypper dist-upgrade && zypper ps -s'"
print -s "zypper install package"
print -s "zypper in package"
print -s "zypper remove package"
print -s "zypper rm package"
print -s "zypper rm --clean-deps package"
print -s "zypper update"
print -s "zypper up"
print -s "zypper dist-upgrade"
print -s "zypper dup"
print -s "zypper removerepo repo"
print -s "zypper ps -s"
print -s "zypper list-updates"
print -s "zypper search 'usb*'"
print -s "zypper se 'usb*'"
print -s "zypper info usbutils"
print -s "zypper repos --uri"
print -s "zypper lr --uri"