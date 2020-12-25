---
layout: post
title: Serendipity Styx 2.9.4 release
last_modified_at: 2020-12-25T10:54:00+00:00
---

N° 2020/2 - The Serendipity Styx 2.9 branch 2.9.4 release.

## Styx 2.9.4 applies

  - Fixes Spartacus Pluginlist Synchronisation issues
  - Fixes a MEDIA.base_properties property_subgroup assignment. Regressional fixes went to frontend related media_showitem.tpl template themes [default, default-php, 2k11]. Watch out for custom copy themes.
  - Fixes the (MySQL) "simple" Install routine for utf8mb4 usage. Auto fix previous "simple" installs by maintenance check.
  - Again, PLEASE read the 2.9.1 blog post for further branch upgrades only! The 3.0-beta1 release is near!

Check out the [ChangeLog](https://github.com/ophian/styx/blob/2.9.4/docs/NEWS) for details or even read the commit [history](https://github.com/ophian/styx/commits/2.9.4) for more. See [download](https://github.com/ophian/styx/releases/tag/2.9.4)
