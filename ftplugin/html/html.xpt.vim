" Personal additions
"
XPTemplate priority=personal

let s:f = g:XPTfuncs()

XPTvar $blank ' '
XPTvar $js_dir 'javascripts'
XPTvar $css_dir 'stylesheets'
XPTvar $jq_ver '1.4.2.min'
XPTvar $empty ''

XPT copy_comment hidden
<!-- © Copyright `strftime("%Y") $author^. All Rights Reserved. -->

XPT copyright "
&copy;`strftime("%Y") $author^ &mdash; All Rights Reserved

XPT meta
<meta name="`$_xSnipName^" content="`meta_content^" />

XPT author alias=meta " <meta name="author"...
XSET meta_content=$author

XPT description alias=meta " <meta name="description"...
XSET meta_content=Echo('')

XPT keywords alias=meta " <meta name="keywords"...
XSET meta_content=Echo('')

XPT doctype " <!DOCTYPE...
<!DOCTYPE html` `PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"^>

XPT doctype5 " <!DOCTYPE html>
<!DOCTYPE html>

XPT charset " <meta charset...
<meta charset="utf-8" />

XPT skel abbr synonym=html|xhtml " xhtml skeleton
`:doctype5:^
<html>
<head>
    `:title:^
    `:charset:^`
    `author^
</head>
<body>
    `cursor^
</body>
</html>
`:copy_comment:^

XPT link " <link rel='stylesheet'...
XSET dir=$css_dir/
XSET src=base.css
XSET media=screen
<link rel="stylesheet" type="text/css" href="`dir^`src^"` media="`media`"^ />

XPT alternate " <link rel='alternate'...
XSET type=application/rss+xml
XSET url=/feed/
<link rel="alternate" type="`type^" title="`title^" href="`url^" />

XPT icon " <link rel='shortcut icon'...
XSET url=/favicon.ico
<link rel="shortcut icon" href="`url^" />

XPT reset synonym=fonts|base|grids|layout|screen
XSET name=$_xSnipName.css
`:link( { 'src' : 'name' } ):^

XPT print alias=link
XSET src=print.css
XSET media=print

XPT jquery abbr synonym=jq " <script... src="jquery...
XSET dir=$js_dir/
XSET ver=$jq_ver
<script type="text/javascript" src="`dir^jquery`-`ver^.js"></script>

XPT script " <script... src="...
XSET dir=$js_dir/
XSET src=$empty
<script type="text/javascript" src="`dir^`src^.js"></script>

XPT jplug abbr synonym=jfile|jp|jf alias=script

XPT jscript synonym=js
<script type="text/javascript">
    `cursor^
</script>

XPT di wrap=content " <div id="">.</div>
XSET val=Echo('')
XSET val|post=Echo(V()=~'\V\^ id=""\$\|val' ? '' : V())
XSET content|ontype=html_cont_ontype()
<div` id="`val`"^>`content^^`content^html_cont_helper()^</div>

XPT div abbr wrap=cursor " <div id..>\n\n</div>\n<!-- id..
XSET val=Echo('')
XSET val|post=Echo(V()=~'\V\^ id=""\$\|val' ? '' : V())
<div` id="`val`"^>
`cursor^
</div>
<!--`val^ -->

XPT ul abbr alias=_tagAttr " <ul att?...

XPT ol abbr alias=_tagAttr " <ol att?...

XPT li abbr " <li>..</li>...
XSET content=Echo('')
<li>`content^</li>

XPT lia abbr " <li><a href=...
XSET href=#
`:li( { 'content' : ':a:' } ):^

XPT nav synonym=menu " <ul id='nav'...
XSET nav=$_xSnipName
<ul` id="`nav`"^>
    `:lia:^`
    `...^
    `:lia:^`
    `...^
</ul>

XPT a wrap=content " <a href...
XSET href=#
XSET content=Echo('')
<a href="`href^">`content^</a>

XPT lie8 wrap=content " <!--[if lt IE 8]>...
XSET content=Echo('')
<!--[if lt IE 8]>
`content^
<![endif]-->

XPT lie9 wrap=content " <!--[if lt IE 9]>...
XSET content=Echo('')
<!--[if lt IE 9]>
`content^
<![endif]-->
