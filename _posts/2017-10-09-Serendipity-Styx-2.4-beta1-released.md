---
layout: post
title: Serendipity Styx 2.4-beta1 was released
---

The Styx October 2.4-beta1 release brings exiting news for MySQLi users, "finally" fixes the MediaLibrary and adds some new widgets. And much more. Check the [ChangeLog](https://github.com/ophian/styx/blob/2.4-beta1/docs/NEWS) for details!
And remember, Styx is **PHP 7.1.x** ready!

## Styx 2.4-beta1 runs (...some highlights)

  - Set minimum required PHP version to 5.4+
  - Adding the migration task for full UTF8MB4 unicode support on MySQL server databases >= v.5.5.3
  - Installing new mysql systems already UTF8MB4 ready, if supported
  - Adding a new spamblocklog CLEANUP widget for SPAM-blown-up log database tables
  - Adding responsiveimages event plugin, which creates an easy way for authors to upload differently sized images and to scale images to the visitors viewport width
  - Fixing some more old and odd bugs in the MediaLibrary and its tasks (see changelog for details)
  - Preparations for translated theme info strings in the theme info layer, already done for [de]
  - Lots of optimising for the lang constants
  - Other optimized (backend) handlers and bugfixes
  - And some more...

See [download](https://github.com/ophian/styx/releases/tag/2.4-beta1)