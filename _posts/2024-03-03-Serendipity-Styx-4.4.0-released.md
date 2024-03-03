---
layout: post
title: Serendipity Styx 4.4.0 release
last_modified_at: 2024-03-03T12:41:00+00:00
---

N° 2024/01 - The Serendipity Styx 4.4.0 release <img class="php8" src="/i/b/logo_php8_3.svg" alt="php8.3" width="160" height="48">

### 4.4.0 - Spring Edition and maintenance release

Since Styx 4.3 releases some major issues and improvements were found to file a new revision. Next Serendipity Styx 5.0 was set on hold meanwhile to use the new 4.4 revision as its new base for jump off.

So again to say: This maintenance update is the last regular Serendipity Styx 4 series revision supporting the PHP 7.4+ Series. If nothing in the following development of next major Serendipity Styx version 5.0 is discovered, which needs an important backport refactoring, further only urgent bugfix or security point releases will be given.

As already pointed out: With the release of PHP 8.3 the EOL for PHP 8.0 has arrived. Please update to the latest available PHP version for your system, to be able to work with all features Serendipity Styx supports.

It is supposed to be a **must have** revision to positively checkout into the future of Serendipity Styx ! Read the changelog, please.

## Styx 4.4.0 introduces

  - Fixed remote_ticker issues for PostGreSQL databases queries and trying to fix a re-appearing of hidden remote messages on some host
  - Generally improved markup, templates, styles, plugins and constants
  - Improve output indentation markup mainly based to the [ pure ] standard theme in 2-sidebar structures indent mode. This helps to better understand the general inheritance tree, find issues more easily and always send clean code.
  - Fix the history plugins specialage years option for leap year calculations
  - Improved [ styx ] backend theme dark mode conditioning to match browser preferences OR previously added storage sets, backend user preferences and (non-) login states for asset loads, icon-schemes, virgin arrivals, Smarty vars and scope. NO JS, NO FUN ! ;-)
  - Improved [ styx ] backend theme to implement expandable hooked plugins into the backend sidebar, to expand/collapse non-core plugins on demand
  - Improved [ styx ] backend theme installation and upgrade pages
  - Refactor several main functions for performance and others optimizations like media nuke handlers
  - Added dark mode support to the [ styx ] backend theme for installer.inc and upgrader.inc template files, which also removes unneeded assets loading.
  - Allow [ pure, boot, b5blog, b53 ] themes dark mode preference in backend preview_iframe views.
  - Fixes to the [ pure, psg, dude, boot, b5blog, b46, b53 ] themes
  - Upgrade some libraries and assets
  - Bug fixes

Have fun with the update and read the ChangeLog!! See you again on 😎 Serendipity Styx 5.0 !😃

Check out the [ChangeLog](https://github.com/ophian/styx/blob/4.4.0/docs/NEWS) for details, or even read the commit [history](https://github.com/ophian/styx/commits/4.4.0) for more. See [download](https://github.com/ophian/styx/releases/tag/4.4.0).

