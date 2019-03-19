## Wireshark informations
    Wireshark (aka Ethereal) is a free packet sniffer computer application.  It
    is used for network troubleshooting, analysis, software and communications
    protocol development, and education.  In June 2006, the project was renamed
    from Ethereal due to trademark issues.

    The functionality Wireshark provides is very similar to tcpdump, but it has
    a graphical front-end and many more information sorting and filtering
    options.  It allows the user to see all traffic being passed over the network
    (usually an Ethernet network but support is being added for others) by
    putting the network interface into promiscuous mode.

    Wireshark uses the cross-platform Qt5 widget toolkit.  Its powerful features
    make it the tool of choice for network troubleshooting, protocol development,
    and education worldwide.

    If you use a filesystem that supports posix capabilities, an easy way to
    start wireshark as a normal user, while still providing it with all of the
    access permissions it requires, is by issuing the following command:
    $ setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap

    You will need to remove any already-installed wireshark package before
    building this one or else the new one will not work (the new build will
    link libraries present in the old package, which will then be removed
    when upgrading).

    Optional dependencies:
    - c-ares
    - krb5
    - nghttp2
    - spandsp
    - snappy
    - lz4
    - libsmi

    NOTE: Wireshark 3.0 no longer support legacy GTK+ UI.

    NOTE: Although lua is listed as a requirement, it's possible to build
    using lua52. This may be needed for some third-party Lua plugins (but,
    it may break other third-party Lua plugins; your mileage may vary). The
    default is to build with lua52 if it's installed, or lua otherwise. If
    you have both lua versions installed, you can build with LUA52=no in
    the environment to build with the older lua.

## To build with GTK add "--with-gtk" in the ./configure command
    ./configure \
        --with-gtk \
        ...

## Delete interface mon0
    iw dev mon0 del
