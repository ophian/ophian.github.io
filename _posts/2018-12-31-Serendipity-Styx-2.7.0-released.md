---
layout: post
title: Serendipity Styx 2.7.0 release
---

Styx 2018/6 - The 2.7.0 **New Year's Eve Release Edition** is out! Check the [ChangeLog](https://github.com/ophian/styx/blob/2.7.0/docs/NEWS) for details!
Serendipity Styx is PHP 7.3 READY and requires PHP from 5.5+! Approximately this is the last edition supporting the old PHP 5 Series.

## Styx 2.7.0 runs (...some highlights)

  - Various old and some new bugs were fixed.
  - Various THEMES were improved again, either updated, or revisited for certain places, like the new "pcomments.tpl" file for comment shortcut pages. Read on in the ChangeLog. And keep you copy themes up-to-date!
  - Improve media directory list adding the number of local media entries
  - Improve categories list adding the number of associated entries
  - Multiple improvements for the MediaLibrary, like lowercase conversion and adding missing media file extensions for image types.
  - Improve the Media Gallery markup and display notation to go with much better column ordered lists
  - Improve the Maintenance widget page to display items column-ordered
  - Preparations to allow and replace hidden-category entries by the categorytemplates event plugin which makes it possible to use categories/entries independently
  - Various lang constant fixes and improvements like finding a better name for the MediaLibrary in german language files
  - Add a "Zombie Plugin Manager Clearance maintenance Spot", to get rid (physically) of old, locally outdated and unsynchronized plugins
  - PHP 7.3 readiness.

It might again be a good idea to take the advantage of starting a new copy template before adapting each single theme change to your old copy themes!

Read the [ChangeLog](https://github.com/ophian/styx/blob/2.7.0/docs/NEWS) or the commit [history](https://github.com/ophian/styx/commits/2.7.0) for more. See [download](https://github.com/ophian/styx/releases/tag/2.7.0)