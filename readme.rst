.. contents:: Table of Contents

Installation
============

- Edit these files before running

  * ``hosts``
  * ``vars.yml``
  * ``playbook.yml``

- Run commands

  .. code-block:: shell

      make install-tools
      make check-localhost
      make system-opensuse-tumbleweed

Additional Softwares
====================

- JetBrains Toolbox
- netdata

Configuration
=============

SSH
---

Set up private and public keys.

Konsole
-------

Unlimited history.

System
------

- System Settings

  * Global Theme: Breeze Dark
  * Plasma Style: Install and use Sweet
  * Application Style

    + Window Decorations: No Borders

  * Workspace Behavior

    + General Behavior: Double-click to open files and folders
    + Desktop Effects

      - Appearance:

        * Translucency
        * Magic Lamp

      - Candy: Wobbly Windows

  * Window Mangement

    + Window Behavior: Focus follows mouse (mouse precedence)
    + Task Switcher: Cover Switch

  * Input Devices

    + Keyboard

      - Hardware: NumLock on Plasma Startup: Turn on
      - Advanced: Caps Lock behavior: Caps Lock is also a Ctrl

  * Display and Monitor

    + Night Color: Activated

- YaST

  * Boot Loader

    + Kernel Parameters
    
      - Enable verbose log during boot: Makre sure only ``resume=/dev/xxx`` left.

    + Bootloader Options: Timeout in Seconds: 3

  * Software Repositories

    + Enable debug repo

Firefox
-------

``about:config``
~~~~~~~~~~~~~~~~

Documents
`````````

- https://dxr.mozilla.org/mozilla-central/source/modules/libpref/init/all.js
- https://superuser.com/questions/697018/how-to-disable-popups-in-firefox-without-add-ons
- http://kb.mozillazine.org/About:config_entries

Settings
````````

- Popups Prevention

  =============================================  =======
  Field                                          Value
  =============================================  =======
  dom.popup_maximum                                    2
  dom.popup_allowed_events                       <empty>     
  dom.disable_window_open_feature.location          true
  dom.disable_window_open_feature.close             true
  dom.disable_window_open_feature.resizable         true
  dom.disable_window_open_feature.minimizable       true
  dom.disable_window_move_resize                    true
  browser.link.open_newwindow                          3
  browser.link.open_newwindow.restriction              0
  browser.link.open_newwindow.override.external       -1
  =============================================  =======

- Keep Firefox open after closing the last tab

  ===================================  =====
  Field                                Value
  ===================================  =====
  browser.tabs.closeWindowWithLastTab  false
  ===================================  =====

- Open new tab after current tab

  ===============================  =====
  Field                            Value
  ===============================  =====
  browser.tabs.insertAfterCurrent   true
  ===============================  =====

- Show tabs in full-screen mode

  ===========================  =====
  Field                        Value
  ===========================  =====
  browser.fullscreen.autohide  false
  ===========================  =====

- Hide title bar

  ===========================  =====
  Field                        Value
  ===========================  =====
  browser.tabs.drawInTitleBar   true
  ===========================  =====

- Double-click selects words instead of select all URL

  ====================================  =====
  Field                                 Value
  ====================================  =====
  browser.urlbar.doubleClickSelectsAll   true
  ====================================  =====

Add-ons
~~~~~~~

- Dark Reader
- Download all Images
- Facebook Container
- FoxScroller
- HTTPS Everywhere
- KeePassXC-Browser
- LeechBlock
- Mate Translate
- Mute sites by default
- Notes by Firefox
- Open Tabs Next to Current
- Privacy Badger
- Search by Image
- stutter
- To Google Translate
- uBlock Origin
- Web Search Navigator

PAC
~~~

PAC file should be named ``proxy.pac``.

.. code-block:: js

    function FindProxyForURL(url, host) {
        url = url.toLowerCase();
        host = host.toLowerCase();

        let patterns =
        [
            "*example.com",
            "*example.net"
        ];

        for (let p of patterns) {
            if (shExpMatch(host, p)) {
                return "SOCKS5 <proxy-server>:<proxy-port>; DIRECT";
            }
        }

        return "DIRECT";
    }

Ansible Overview
================

- https://docs.ansible.com/ansible/latest/user_guide/playbooks_best_practices.html#directory-layout
- https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html#variable-precedence-where-should-i-put-a-variable
- https://docs.ansible.com/ansible/latest/user_guide/intro_patterns.html#common-patterns
- https://docs.ansible.com/ansible/2.7/user_guide/intro_inventory.html#splitting-out-host-and-group-specific-data

.. code-block:: text

                                                   +--------+--------+
                                                   |        | Task 1 |
                                           +-------+ Play 3 | Task 2 |
                                           |       |        | Task 3 |
                                           |       +-----------------+
                                           |                ^
                                           |                |
                                           |                |
    +-----------------------+              |          +-----+------+                         +------------------------+
    |        DBGroup        |              |          |            |                         |        WEBGroup        |
    +-----------------------+              |          |  PLAYBOOK  |                         +------------------------+
    | Host: db1.example.com |              |          |            |                         | Host: web1.example.com |
    | Host: db2.example.com +<-------------+          +-+--------+-+                         | Host: web2.example.com |
    | Host: db3.example.com |                           |        |                           +------------+-----------+
    +-----------+-----------+                           |        |                                        ^
                ^                                       |        | contains play                          |
                |     +---------------------------------+        +---------------------------------+      |
                |     |                                                                            |      |
                |     |                                                                            |      |has host group
                |     v                                                                            v      |
      +---------+-----+---+                       +------------+--------+                      +---+------+---------+
      |                   | has role              |            | Task 1 |                      |                    |
      |  Play 1 (for DB)  +------+--------------->+ CommonRole | Task 2 +<--------------+------+  Play 2 (for WEB)  |
      |                   |      |                |            | Task 3 |               |      |                    |
      +-------------------+      |                +------------+--------+               |      +--------------------+
                                 |                                                      |
                                 |      +--------+--------+   +---------+--------+      |
                                 |      |        | Task 1 |   |         | Task 1 |      |
                                 +----->+ DBRole | Task 2 |   | WEBRole | Task 2 +<-----+
                                        |        | Task 3 |   |         | Task 3 |
                                        +--------+--------+   +---------+--------+
