"
"
XPTemplate priority=personal+

XPT def " def .. end
XSET action=Echo(' ')
def `method^`
    `action^
end

XPT attr " attr_**
XSET what=Choose(["accessible","protected","accessor","reader","writer"])
XSET attr*|post=ExpandIfNotEmpty(', :', 'attr*')
attr`_`what^ :`attr*^

XPT validates " validates :attr ...
validates :`attr^, `^

XPT :presence synonym=:uniqueness|:acceptance|:confirmation|:numericallity " $_xSnipName => true
XSET bool=true`^
`:key({ 'val' : 'bool' }):^

" eRuby attribute snippets

XPT key hidden " $_xSnipName => val
XSET val=Echo('')
`$_xSnipName^ => `val^

XPT :cols synonym=:rows|:size|:maxsize|:null|:url " $_xSnipName => val
`:key:^

XPT :object synonym=:collection|:locals|:layout|:method " $_xSnipName => val
`:key:^

XPT :id synonym=:class|:alt|:title|:action|:controller|:to " $_xSnipName => 'val'
XSET str='`val^'
`:key({ 'val' : 'str' }):^

XPT :selected synonym=:multipart " $_xSnipName => true
XSET bool=true`^
`:key({ 'val' : 'bool' }):^

XPT :html alias=key
XSET val={ `html^ }

XPT :media alias=key
XSET val='`screen^'

XPT image_tag synonym=imt " image_tag...
image_tag('`filename^'`, `opt?^)

" RSpec snippets

XPT loop " $_xSnipName args? do .. end
XSET content=Echo('')
`$_xSnipName^` `args^ do
`  `content^
end

XPT describe synonym=it alias=loop
XSET args="`^"

XPT resp
response.

XPT :content " $_xSnipName => "val"
`:key:^

XPT shd abbr " should ...
should `^

XPT shn abbr " should_not ...
should_not `^

XPT shb abbr " should be_
should be_

XPT shnb abbr " should_not be_
should_not be_
