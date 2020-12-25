---
layout: post
title: Serendipity Styx 3.0.0 release
last_modified_at: 2020-12-25T10:54:00+00:00
---

N° 2020/4 - The new Serendipity Styx 3.0 mayor release.

### Preamble

Styx 3.0 breaks with longterm backward compatibility for upgraders. It cleans up various old workarounds, changed APIs for consistency, refactored the media API, removed polyfills and exceptions in special for Serendipity Series revisions that are older than 2.0. This is a very need to further improve code and code design in future. The 2.9 branch releases are recommended to do these steps for elder Serendipity versions first. One could say, the complete 2.9 branch is part of working on Styx 3.0. Read about it in blog posts down below.

### Requirements

Serendipity Styx 3.0 does not only require an up-to-date PHP version from PHP 7.3, it also requires PHP/GD/ImageMagick with --webp support and an openSSL version which is at least a Debian (10) Buster alike version of 1.1.1d for strongest GCM login encryption!

## KEY-FEATURES of Serendipity Styx 3.0

  - Styx 3.0 now enables the last piece for **complete independence**, that is theming. The **standard** theme was changed to the new "_pure_" theme, and some more were added to the core release, while others, rather old ones, were removed from core and went into the new additional themes Styx repository theming pool. This last piece of physical Styx independence was bound-in to now point to rewritten or at least deeply checked additional themes only, and to work with this current Styx version, adding all the needs and removing all the deprecations, which had summed up over years of nearly two decades.
  - In the **BACKEND**, various improvements were done and the Media Library got a new default file format called **webP**, which deeply improves the size of inbound images (jpg, gif, png) along roundabout 30%, by keeping the origins quality without loss.  This enables us, for example, to better handle more than the default of 8 media items per page, without performance or load issues. This also applies to the themes and additional_themes backend previews. To now have this new file format available as an additional image media item **_"variation"_**, enables Styx to use a modern `<picture>` HTML element using `<source>` sourcesets, which still supports the origin format (like jpg) as the fallback when the visitors browser does not support it.
  - Further on key features are ImageMagick 7 library support, on-the-fly change Media Grid Columns in the MediaLibrary, improved theme handlers, a complete remove of the Rich Text Editor htmlarea approach (CKEditor), which further on lives as an asset, basic only package in the `templates` directory, though still bringing up improvements like Emojis Panel and so on. This is also used for the frontend commentform if having enabled secured html comments. It is recommended to extend this library by using the additional CKEplus event plugin.
  - The recommended MariaDB/MySql utf8mb4 database collation is now utf8mb4_unicode_520_ci. JQuery raised to latest revision, as well as all other bundled libraries if possible. And so on. All relevant bugfixes found over year were already backported to the `2.9` branch.

Check out the [ChangeLog](https://github.com/ophian/styx/blob/3.0.0/docs/NEWS) for details or even read the commit [history](https://github.com/ophian/styx/commits/3.0.0) for more. See [download](https://github.com/ophian/styx/releases/tag/3.0.0).
