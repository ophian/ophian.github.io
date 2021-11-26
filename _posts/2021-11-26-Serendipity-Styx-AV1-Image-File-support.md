---
layout: post
title: Serendipity Styx AV1 Image File support
last_modified_at: 2021-11-26T14:07:00+00:00
---

N° 2021/7 - PHP 8.1 & Serendipity Styx AV1 Image File support <img class="php8" src="/i/b/logo_php8_1.svg" alt="php8" width="160" height="48">

## AV1 Image File  format

<div markdown="1">
 <div>

    <h3>Serendipity Styx AV1 Image File format groundwork</h3>

    <p>As already stated when developing the Styx 3.0 Series for WebP there was
    another image format on the horizon.</p>

    <p>This is the AV1 Image File or AVIF format, which offers extreme compression
    by visually no image quality change compared to the traditional formats like
    JPEG, PNG, and GIF, and even the relatively new WebP format.</p>

    <p>A royalty-free, cross-platform format for media delivery, given support from
    all big players (Alliance for Open Media), so it is likely to get adopted
    much faster than the WebP format, which took almost ten years from launch
    before being supported in Firefox.</p>

    <h3>AV1 Image File support in browsers and apps</h3>

    <p>Chrome 85+ and Firefox up from 93+ already support the AVIF format by default.
    The latest status for browsers supporting AVIF can be found here:
    <a href="https://caniuse.com/avif">[&lt;&lt; Can I use &gt;&gt;]</a>.
    Sadly the Safari browser and Apple OS environments are behind, while Android
    should already work.</p>

    <h3>AVIF image format delivery</h3>

    <p>As you know already by working with Styx WebP Variations, uploaded files in
    standard image formats are additionally stored as new format Variations.
    So AVIF is yet another Variation stored in the MediaLibrary .v&#47; directories.</p>

    <p>The Styx OUTPUT instrumentarium checks the image AVIF Variation compared
    with the WebP Variation and always delivers the smaller in filesize.
    If it is enclosed by the picture element container, the sourceset (srcset)
    order will always be AVIF first, then WebP and for last as the &lt; img &gt;
    element the origin file expression.<br>
    In case the <strong>WebP</strong> srcset image expression is smaller in filesize than the
    <strong>AVIF</strong> one, the AVIF srcset is suppressed. This ensures that always the
    smallest in size is delivered.<br>
    Sending this prepared HTML markup to the client, the users browser and
    environment decides which image it is able to load and to display.</p>

    <h3>CURRENT IMPORTANT DRAWBACKS of using AVIF format</h3>

    <p>While most of the things about AVIF are very promising and it is likely to
    become the standard for media delivery in the future, there are some shortcomings
    that we should be aware of before migrating to AVIF.</p>

    <p>The <strong>ABSOLUTE MAJOR BOTTLENECK</strong> is the encoding performance of AVIF images,
    which can be <strong>VERY SLOW</strong> compared to JPEG or WebP images. While the majority of
    user devices should have no problem decoding AVIF images for display, it
    can at times take over a minute or two to encode an image to AVIF.</p>

    <p>As the format evolves, the encoding performance is likely to improve in future.</p>

    <h3>ENVIRONMENTAL ENCODING SUPPORT</h3>

    <p>Encoding support starts with PHP 8.1 by GD library with release at the end
    of November 2021 and with ImageMagick up from 7.0.25+ versions.</p>

    <p>Uploading files already in WebP or AVIF format was even possible before, but
    resizes, read out and other actions do need support at least from some PHP
    build-in methods. There still is work to do, like for getimagesize(), which
    does not work for AVIF image sizes yet in PHP 8.1 out of the box (see LIMITATIONS).</p>

    <p>We have to strongly remind you - when testing - to not upload more than one
    image at time (!) to not crash your given server resources.<br>
    The time of encoding is depending on the origins file size. Sizes under
    1 MB won't matter as much as when using images with several Megabytes.</p>

    <p>PHP GD and ImageMagick encoding compression are slightly different and their
    results often surprising comparing all formats.</p>

    <h3>TEST INFORMATIONS</h3>

    <p>If you want to get known to AVIF without touching your current blog system,
    there are third-party service providers like ImageKit with extensive image
    processing networks to provide decent AVIF encoding performance in real-time
    for your images. Or using the fascinating tool and conversion privacy of
    <a href="https://avif.io/">[&lt;&lt; avif.io &gt;&gt;]</a> which uses Rav1e, Rust and WASM to convert your
    images clientside.</p>

    <p>Styx 3.6 has not yet enabled AVIF support by default. It just states to be
    groundwork ready for extreme testers and other Developers.</p>

    <p>For daring testers I push out a <strong>Serendipity Styx 3.7-beta1</strong> soon which will
    be able to enable AVIF variations per option (<em>temporarily</em>). Maybe we will
    not be able to use AVIF variations per Styx default, als long the requirements
    are given, for some years, since performances and other issues like the ones
    already mentioned were not proofed over several years (<em>as they were for WebP
    which had much more time landing in mainstream</em>).</p>

    <p>Also see some interesting external comparison pages (out of others) for the new format:
    <a href="https://www.gumlet.com/learn/avif-for-image-coding-everything-you-need-to-know/">[&lt;&lt; everything you need to know &gt;&gt;]</a>
    and <a href="https://jakearchibald.com/2020/avif-has-landed/">[&lt;&lt; 2020 avif has landed &gt;&gt;]</a>.</p>

    <h3>POSSIBLE FAILURES</h3>

    <p>This base implementation is known to fail with certain Variation builds, in
    special with ImageMagick conversions while developing. So any WebP images
    with 0 bytes, or AVIF images with 252 bytes (0.25 KB) or 3389 bytes (3.4 KB)
    or 34165 bytes (34 KB) are considered broken and conditionally excluded from
    usage. Time will tell if this needs a review for different file systems or
    just were rare issues on my machine while experimental development only.<br>
    <strong>FOR ANY TESTERS:</strong><br>
    If you see outlined files with webp or avif extension not being displayed by
    link or by picture container, please file an issue with extended information.</p>

    <h3>LIMITATIONS</h3>

    <p>PLEASE NOTE, that ALL current PHP versions - including the just now released
    PHP 8.1 - are not able to thumbsize an image by <strong>readable</strong> image sizes,
    when you have an AVIF image format.<br>
    The PHP 8.1 standard image format conversions in current Styx 3.6 and 3.7-beta1
    state are only able to do so, since they take the same values as the WebP
    expression as a "stolen" value copy. This is a current Styx PHP workaround
    and upload limitation as long this is not implemented to PHP without having
    to use additional libraries.</p>

    <p>Some Developers already have already stiched together a promising <strong>libavifinfo</strong> file
    that still needs some final thoughts and reviews but is near to come included
    to PHP, so we probably will get readable support for AVIF info containers hidden
    inside the AVIF file. If this is going to be added to PHP 8.1 is a question and
    may as well find its way very much later to PHP 8.2 next year.</p>

    <p>This also implies to image scaling and rotate actions. So if an AVIF image
    file or image AVIF Variation file exists - and/or is known broken by filesize
    image scaling/rotating is prohibited for all formats as long this PHP
    implementation loss is a matter. Rotate won't throw a message in this case.</p>

 </div>
</div>
