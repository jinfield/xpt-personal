"
"
XPTemplate priority=personal+

XPT key hidden " :key => val
XSET val=Echo('')
`$_xSnipName^ => `val^

XPT :cols synonym=:rows|:size|:maxsize|:null|:url
`:key:^

XPT :object synonym=:collection|:locals|:layout|:method
`:key:^

XPT :id synonym=:class|:alt|:title|:action|:controller
XSET str='`val^'
`:key({ 'val' : 'str' }):^

XPT :selected synonym=:multipart
XSET bool=true`^
`:key({ 'val' : 'bool' }):^

XPT :html alias=key
XSET val={ `html^ }
