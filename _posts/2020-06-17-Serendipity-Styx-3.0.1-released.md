---
layout: post
title: Serendipity Styx 3.0.1 release
last_modified_at: 2020-12-25T10:54:00+00:00
---

N° 2020/5 - The Serendipity Styx 3.0.1 bugfix release.

## Styx 3.0.1 applies

  - Fixes some (minor) 3.0.0 upgrade issues
  - Improves some (minor) upgrade and installer tasks
  - Renamed the 3.0.0 standard pure theme to "pure 2019" and to further live as a child theme of pure (2020).
  - Changed the "pure" (2020) standard theme to use a modern CSS3 grid technique for responsive layout actions, since there was a comment fields issue with the layout javascript in combination with the CKE RichTextEditor and the Android GBoard App on mobiles.
  - Fixes wrong cookie assignment condition for addmedia lastdir directory
  - Allow RichTextEditor comment areas in the dude (theme), since also using CSS3 grid techniques
  - Improved some language constants and messages
  - Improved some (minor) backend styles
  - . . .
  - The improved autoupdate plugin does now allow to delete all previous zip update version files. Please enable this option first before performing your upgrade! This can free up lots of Megabytes on old blogs.

Check out the [ChangeLog](https://github.com/ophian/styx/blob/3.0.1/docs/NEWS) for details or even read the commit [history](https://github.com/ophian/styx/commits/3.0.1) for more. See [download](https://github.com/ophian/styx/releases/tag/3.0.1)
