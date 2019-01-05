---
layout: post
title: Serendipity Styx 2.4.0 was released
last_modified_at: 2018-11-06T13:34:00+00:00
---

The Styx November 2.4.0 RELEASE brings exiting news for MySQLi users, "finally" fixes the MediaLibrary and adds some new widgets. And certainly much more. Check the [ChangeLog](https://github.com/ophian/styx/blob/2.4.0/docs/NEWS) for details!
Styx is **PHP 7.1.x** ready!

## Styx 2.4.0 runs (...some highlights)

  - Set minimum required PHP version to 5.4+.
  - Adding the migration task for full UTF8MB4 unicode support on MySQL server databases >= v.5.5.3
  - Installing new MySQL systems already UTF8MB4 ready, if supported
  - Adding a new spamblocklog CLEANUP widget for SPAM-blown-up log database tables
  - Adding and moving certain core plugins to the "additional_plugins" Spartacus repository. One of it is the new responsiveimages event plugin, which creates an easy way for authors to upload differently sized images and to scale images to the visitors viewport width.
  - Fixing some more old and odd bugs in the MediaLibrary and its tasks (see changelog for details)
  - Preparations for translated theme info strings in the theme info layer, already done for [de]
  - Lots of optimising for the lang constants and others made translatable
  - Important upgrade task fix for plugins out of sync. This is important to not have untouched and famished plugins lying around.
  - Other optimized (backend) handlers and bugfixes
  - Latest Smarty lib
  - SQLite optimizations
  - And more...

See [download](https://github.com/ophian/styx/releases/tag/2.4.0)