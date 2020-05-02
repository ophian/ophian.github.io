---
layout: post
title: Serendipity Styx 2.9.5 release
last_modified_at: 2020-05-02T14:53:00+00:00
---

Styx 2020/3 - The Serendipity Styx 2.9 branch 2.9.5 release.

## Styx 2.9.5 applies

  - Fixes some upgrade task issues upgrading from old Serendipity (S9y) versions
  - Fixes some database utf8mb4 migration issues when upgrading from  (ditto)
  - Fixes very old password MD5 migration issues when upgrading from (ditto)
  - Fixes a backend style for rare case
  - Fixes some spamblock cases with filter checks and newer mysql versions
  - Added some Smarty backward-compatibility methods for very lazy upgraders. This only applies to this 2.9 branch and is done only, while the thrown exception error reasons were unguessable for non-professionals. **Do not wait; Do it now!**
  - Again, PLEASE read the 2.9.1 blog post for further branch upgrades only! The 3.0-beta1 release is very near!

Check out the [ChangeLog](https://github.com/ophian/styx/blob/2.9.5/docs/NEWS) for details or even read the commit [history](https://github.com/ophian/styx/commits/2.9.5) for more. See [download](https://github.com/ophian/styx/releases/tag/2.9.5)
