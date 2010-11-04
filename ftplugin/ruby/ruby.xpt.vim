"
"
XPTemplate priority=personal+

XPT def abbr " def .. end
def `cursor^
end

XPT if " if .. end
if `cursor^
end

XPT attr " attr_**
XSET what=Choose(["accessible","protected","accessor","reader","writer"])
XSET attr*|post=ExpandIfNotEmpty(', :', 'attr*')
attr`_`what^ :`attr*^

XPT validates " validates :attr ...
validates :`attr^, `^

XPT :presence synonym=:uniqueness|:acceptance|:confirmation|:numericality " $_xSnipName => true
XSET bool=true`^
`:key({ 'val' : 'bool' }):^

" eRuby attribute snippets

XPT : " :key => val
XSET val=Echo('')
:`key^ => `val^

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

XPT loop synonym=lambda " $_xSnipName args? do .. end
XSET content=Echo('')
`$_xSnipName^` `args^ do
`  `cursor^
end

XPT doe abbr " do .. end
do
    `cursor^
end

XPT pid " params[:id]
params[:id]

" Rails 3 Stuff

XPT match " match '/path', :to => ...
XSET path=Echo('')
match '`path^', :to => '`controller#method^'

XPT flash " flash[:class]...
flash[:`error^] = "`message^"

XPT fln abbr " flash.now[:class]...
flash.now[:`error^] = "`message^"

" RSpec snippets

XPT describe synonym=it|test alias=loop
XSET args="`^"

XPT resp abbr
response.

XPT :content synonym=:cnt " :content => "val"
:content => `^

XPT shd abbr " should ...
should `^

XPT shn abbr " should_not ...
should_not `^

XPT shb abbr " should be_
should be_

XPT shnb abbr " should_not be_
should_not be_

XPT hvs abbr " have_selector
have_selector
