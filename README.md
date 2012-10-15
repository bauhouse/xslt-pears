# Pears

## XSLT Static Site Generator

Dan Cedarholm [announced Pears](http://simplebits.com/notebook/2012/02/07/pears/) on 6 February 2012.

> Yesterday, on stage at [An Event Apart Atlanta](http://aneventapart.com/2012/atlanta/), I announced [Pears](http://pea.rs): an open source WordPress theme for creating your own markup & style pattern library.
> 
> I wanted to create my own database repository of commonly used patterns and figured the tool might be useful for others as well. Breaking interfaces down into patterns has been immensely helpful in learning and re-evaluating the best possible code to implement them. I've just gotten started and will be adding more as I create them.
> 
> But Pears isn't about how I code these patterns--it's a tool for creating your own.
> 
> The theme is available [on GitHub](https://github.com/simplebits/Pears) for those that want to chip in and make it even better. Admittedly, the code is a little rough here and there, but it works.
> 
> Looking forward to seeing others' takes on the patterns that power flexible web interfaces.

When I saw the [Pears theme](https://github.com/simplebits/Pears) that [Dan Cedarholm](http://simplebits.com) had created for WordPress, I thought it would make a great [Symphony](http://getsymphony.com/) ensemble. So, I created a [Symphony ensemble](https://github.com/bauhouse/sym-pears). But I also thought it would serve as an interesting example of how easy it might be to create a static site generator with XSLT.

I wrote some articles to explain the basic principles of [Preprocessors for HTML](http://stephenbau.com/articles/preprocessors-for-html/) and building an [XSLT Static Site Generator](http://stephenbau.com/articles/xslt-static-site-generator/). This repository is a working example of the Pears site rebuilt with XSLT.

### Usage

To process the HTML files, you need `xsltproc` installed. For Mac and Linux and other UNIX-based systems, it is likely that `xsltproc` is already installed. To find out, type the following on the command line:

    xsltproc --version

In a terminal window, navigate to the `workspace` directory in this repository. Then, run the `build` script.

    cd /path/to/pears/workspace
    ./build

Alternatively, you can open the build file and test individual files as you are working on them by copying the `xsltproc` command used to process a specific HTML file.

### Change Log

Version 1.0 - 15 October 2012

- Port Pears to build pages with an XSLT static site generator

### Enjoy Three Different Flavours of Pears

Now you have your choice of technologies on which to build your pattern library: [WordPress](https://github.com/simplebits/Pears), [Symphony](https://github.com/bauhouse/sym-pears) or [XSLT](https://github.com/bauhouse/xslt-pears). You can find more about [the original WordPress theme](https://github.com/simplebits/Pears) below.

## A WordPress Theme by Dan Cedarholm

Pears are common patterns of markup & style.

Pears is an open source WordPress theme. I'll admit the code 
is a bit rough, initially based on the default 'twentyone' theme.

I wanted a handy way of collecting HTML & CSS pattern pairs. 
Often used modules with a minimal of style applied. It's become 
a valuable learning tool, whereby breaking interfaces down into 
small pieces make it easier to learn and improve running code.

HOW TO ADD CODE PATTERNS

- Each pattern is a post in WordPress. 
- Add markup in a custom field named 'html'.
- Add style in a custom field named 'css'.
- Use the main content field for optional notes.

Learn more and see it in action here:
http://pea.rs

Enjoy.

Dan Cederholm
Salem, Massachusetts
February, 2012
http://simplebits.com
