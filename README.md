# opvpnutil
Helper library for OpenVPN for Android
=============

Description
------------
Helper library used by <a href="https://play.google.com/store/apps/details?id=de.blinkt.openvpn">OpenVPN for Android</a>

Building
------------
Use these commands to add submodule to your project:
```
git submodule add https://github.com/abones/opvpnutils/
git submodule update
```

Modify your build.gradle file to include libopvpnutils.so into build:
```
externalNativeBuild {
    ndkBuild {
        path 'opnvpnutil/Android.mk'
    }
}
```