" Personal additions
"
XPTemplate priority=personal

XPTvar $blank   ' '

XPT copy_comment hidden
<!-- © Copyright `strftime("%Y") $author^. All Rights Reserved. -->

XPT aut abbr alias=meta " <meta name="description"...
XSET meta_name=author
XSET meta_content=$author

XPT desc abbr alias=meta " <meta name="description"...
XSET meta_name=description
XSET meta_content=Echo('')

XPT key abbr alias=meta " <meta name="keywords"...
XSET meta_name=keywords
XSET meta_content=Echo('')

XPT skel abbr synonym=html|xhtml " xhtml skeleton
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    `:title:^
    `:contenttype:^`
    `more^ ^
</head>
<body>
    `cursor^
</body>
</html>
`:copy_comment:^

XPT link " <link rel="stylesheet" ..>
<link rel="stylesheet" type="text/css" href="`stylesheets/^`base.css^" />

XPT jquery " jquery script link
XSET dir=ChooseStr( 'scripts/', 'javascripts/' )
<script language="javascript" type="text/javascript" src="`dir^jquery`^.js"></script>

XPT di abbr wrap=content " <div id="">.</div>
XSET val=$blank
XSET content=$blank
<div` id="`val`"^>`content^</div>

XPT div abbr wrap=content " <div id..>\n\n</div>\n<!-- id..
XSET val=Echo('')
XSET val|post=Echo(V()=~'\V\^ id=""\$\|val' ? '' : V())
XSET content=Echo('')
XSET content|post=Echo(V()=~'\V\^  \$\|val' ? '' : V())
<div` id="`val`"^>
`  `content^`cursor^
</div>
<!--`val^ -->

XPT ol abbr
<ol` `att?^>`
`...{{^
<li>`^</li>`
`...^`}}^
</ol>

XPT ul abbr alias=_tagAttr

XPT diva " tips
`:div( { 'content' : ':a:' } ):^
