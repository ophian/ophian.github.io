---
layout: post
title: A word about distribution politics
last_modified_at: 2019-05-12T16:00:00+00:00
---

Styx 2019/2

<div markdown="1">
 <div>

<h2>A word about (server) Distribution politics for the ImageMagick graphics package and new exciting image formats.!</h2><br>

<p>There are two current versions of ImageMagick, the LTS-alike version 6, which will be supported for another 7+ years and the rewrite version 7,
being a little more strict and which becomes new features and enhancements etc. This will give legacy applications more time to upgrade to version 7.</p>

<p>The current <strong>Debian 9</strong> "stretch" is running IM 6.9.7.x, while upcoming <strong>Debian 10</strong> "buster" and "sid" are at IM 6.9.10.x versions.
That means, it seems that even for dist-upgrades the next ~5 years there will be no change, without giving the opportunity to run
both versions co-existing in your environment. Same issue for Centos/Fedora or Ubuntu. Fedora Devs stated to support the co-existing
tooling, so that migration is at least possible over the years.</p>

<p><strong>Serendipity Styx does already support ImageMagick 7 processing.</strong></p>

<p><strong>WebP</strong> support is another thing coming up. As you might have noticed, bigger web sites already use WebP images more and more.
WebP is a new image format developed by Google, which is both, lossy and lossless. WebP-related software is released under a BSD license.
It is a sister Project of <strong>VP8</strong> video and <strong>WebM</strong> multimedia formats. I am truly convinced that this will be the NEW open standard for lossy
compressed true-color graphics on the web in the near future, producing much smaller files of comparable image quality to the older JPEG
and PNG schemes. There are limitation as ever, since you need a browser to support it - well, and the good thing is the most already
do - and you need PHP builds enabled <em>--with-webp</em>, you need either PHP GD having it enabled (see <em>gd_info()</em>) or
ImageMagick build with webP support, which is ready for Debian 10 since 6.9.10.23+dfsg-1 version (see above).</p>

<h3>Unwilling to wait?</h3><br>
<p>You can do one thing about it now. Load the free available tool <strong>cwebp</strong> and pre convert your images to the new format before you upload
them to your blog. If you then have PHP 7 with GD enabled WebP support or even the mentioned IM (or better) versions, then you can already
use WebP in your Styx MediaLibrary with success. If not, you cannot create an upload auto thumb of this format for the moment and probably
have to wait until Styx will release the next major version <strong>3.0</strong>.</p>

 </div>
</div>


