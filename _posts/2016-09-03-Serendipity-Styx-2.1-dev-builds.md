---
layout: post
title: Serendipity Serendipity Styx 2.1-dev migration builds
---

### January 2017, 30th - Serendipity Styx 2.1rc1 was released.

### December 2016, 28th - Serendipity Styx 2.1-beta3 was released.

### September 2016, 26th - Serendipity Styx 2.1-beta2 was released.

### September 2016, 03th - Serendipity Styx 2.1-beta1 was released.

### January 2016, 04th - Migration start

The migration of Serendipity origin to Serendipity Styx took nearly one full year.

**Epigraph:** _"Trouvez ce que vous avez attendez pas à regarder"_

The main focus of Serendipity Styx 2.1 developer builds were rewrites in some older legacy parts of the core (URL routing, template fallback chain, experimental internal caching) as well as PHP7 compatibility in the API or external libs. Serendipity Styx had many month more time to develop and to mature, which made these development releases well-shaped bundles.

Other notable changes include:

 - Various fixes all over - even in themes [ Read the ChangeLog! ]
 - New bundled responsive themes "Timeline" and "Clean-Blog"
 - Improved usability of plugin upgrades
 - Dashboard and Maintenance Section enhancements
 - Permission checks for the dashboard output and comments
 - Usability improvements to the media library, bulk moving support
 - Usability improvements to comments
 - Smarty library update, which brought the need for some template fixes, but - out of others - enhances Smarty, since inheritance is no longer a compile time process.
 - Re-integrated and reworked two very unique example themes, which is a PHP theme (default-php) and a simple XML (output) theme (default-xml).
 - Updates to other core bundled-libs as much as possible.
 - Usage of Zend-DB was reworked for most common cases (still marked experimental).
 - Added Maintenance "serendipity_event_changelog" widget.
 - Added Plugin-Update-Notifier "serendipity_event_plugup" plugin.
 - Some other changes or additions need to be found and/or enabled; _**Well**, it truly is Serendipity, isn't it?_

See [download](https://github.com/ophian/styx/releases)
