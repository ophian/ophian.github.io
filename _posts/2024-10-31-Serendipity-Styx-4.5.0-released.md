---
layout: post
title: Serendipity Styx 4.5.0 release
last_modified_at: 2024-10-31T13:45:00+00:00
---

N° 2024/04 - The Serendipity Styx 4.5.0 release <img class="php8" src="/i/b/logo_php8_3.svg" alt="php8.3" width="160" height="48">

### 4.5.0 - Pre Winter Edition and maintenance release

Since Styx 4.4.2 release the development of Styx 5 started and on its way some relevant issues and improvements were found to now file a new Styx 4 revision.

In some weeks we will also see the release of the new PHP 8.4 version. Styx 4.5 is ready for it and you better update your system to current Styx 4.5 before getting on this train. The new PHP 8.4 ready logo will find its way to this blog post when it is officially announced at php.net. Please update to the latest available PHP version for your system, to be able to work with all features Serendipity Styx supports.

It is supposed to be the latest **must have** revision to positively checkout into the future of Serendipity Styx ! Read the changelog, please.

## Styx 4.5.0 worked on

  - Fixed varying type warning error with postgreSQL databases
  - Fixed several bundled-libs/ library deprecation message errors for upcoming PHP 8.4
  - Fixed some real Methusalem and other old bugs
  - Improved triggered error reportings for PHP 8.4 deprecation sets
  - Update highlightJS and Magnific Popup javascript assets
  - Refactored the ATOM feed for dark mode and feed stylesheet
  - Multi-changed [ default, default-php, b46, b53, b5blog, boot, bootstrap4, clean-blog, psg, pure, next, skeleton, sliver, 2k11, timeline ] themes for several issues or improvements
  - Improved the image orphans tasker and the syndication feed
  - Added backend comments code highlight ability
  - General bug fixing and consistency changes
  - Improved some styling issues and for some external plugin edge cases
  - Multi-fixes for type cared precision
  - Improved some description and explanation constants in language files
  - Backported some Smarty security changes from upcoming Styx 5
  - Allow RichText Editor comments only as an extension of general usage
  - Improved searchTerm filter preparations and the Serendipity sendMail standard compliance
  - Fixed some media IPTC meta field data values and better catch networking connect return errors
  - Improved installer messaging when using the tar installer file for owner:group mismatch

Have fun with the update and read the ChangeLog!! See you again on next 😎 Serendipity Styx 5.0 !😃

Check out the [ChangeLog](https://github.com/ophian/styx/blob/4.5.0/docs/NEWS) for details, or even read the commit [history](https://github.com/ophian/styx/commits/4.5.0) for more. See [download](https://github.com/ophian/styx/releases/tag/4.5.0).

