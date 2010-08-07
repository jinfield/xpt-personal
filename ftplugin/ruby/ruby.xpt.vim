"
"
XPTemplate priority=personal+

XPT def " def .. end
XSET action=Echo(' ')
def `method^`
    `action^
end

" eRuby attribute snippets

XPT key hidden " $_xSnipName => val
XSET val=Echo('')
`$_xSnipName^ => `val^

XPT :cols synonym=:rows|:size|:maxsize|:null|:url " $_xSnipName => val
`:key:^

XPT :object synonym=:collection|:locals|:layout|:method " $_xSnipName => val
`:key:^

XPT :id synonym=:class|:alt|:title|:action|:controller " $_xSnipName => 'val'
XSET str='`val^'
`:key({ 'val' : 'str' }):^

XPT :selected synonym=:multipart " $_xSnipName => true
XSET bool=true`^
`:key({ 'val' : 'bool' }):^

XPT :html alias=key
XSET val={ `html^ }

" RSpec snippets

XPT loop " loop do .. end
`loop^` `arg^ do
    `cursor^
end

XPT describe " describe .. do
XSET name=describe
`:loop({ 'loop' : 'name' }):^

XPT it " it .. do
XSET name=it
`:loop({ 'loop' : 'name' }):^

XPT :content " $_xSnipName => "val"
XSET val="`str^"
`:key:^
