"
"
XPTemplate priority=personal+

XPTvar $img_path 'images'

XPT end " <% end -%>
<% end -%>

XPT else " <% else -%>
<% else -%>
`  `cursor^

XPT content_for synonym=cf|cof " <% content_for :head ...
<% content_for :`head^ do -%>
`cursor^
`:end:^

XPT for " <% for item in items...
<% for `item^ in `@items^ -%>
    `cursor^
`:end:^

XPT if synonym=unless " <% $_xSnipName cond...
XSET action=Echo('')
XSET other=Echo('')
<% `$_xSnipName^ `cond^ -%>
`  `action^
``else..`
{{^<% else -%>
`  `other^
`}}^`:end:^

XPT ifl " <% if flash[...
<% if flash[:`notice^] -%>
<div id="`notice^"><%= flash[:`notice^] %></div>
`:end:^

XPT it hidden " embed-able image tag
XSET image_path=$img_path/
image_tag("`image_path^`image_file^"`, `opt?^)

XPT image_tag synonym=imt " <%= image_tag...
<%= `:it:^ %>

XPT link_to synonym=lt|lit " <%= link_to...
XSET link='`link_text^'
XSET target=Echo('')
<%= link_to `link^, `target^ %>

XPT link_to_img synonym=ltim " <%= link_to image...
`:link_to({ 'link' : ':it:' }):^

XPT lta
`:li({ 'content' : ':link_to:' }):^

XPT enav synonym=nave,nav5
`:nav({ ':lia:' : ':lta:' }):^

XPT form_for synonym=ff " <% form_for @model do...
<% form_for `@obj^ do |`f^| -%>
`  `cursor^
`:end:^

XPT flabel " <%= f.label...
<%= `f^.label `:object^, '`label^' %>

XPT ftxt " <%= f.text_field...
<%= `f^.text_field `:object^ %>

XPT ftxa " <%= f.text_area...
<%= `f^.text_area `object^ %>

XPT fhidden " <%= f.hidden_field...
<%= `f^.hidden_field `object^ %>

XPT fpassword " <%= f.password_field...
<%= `f^.password_field `object^ %>

XPT ferror " <%= f.error_messages...
<%= `f^.error_messages `object^ %>

XPT fcheck " <%= f.check_box...
<%= `f^.check_box `object^ %>

XPT fradio " <%= f.radio_button
<%= `f^.radio_button `object^ %>

XPT ffile " <% f.file_field...
<%= `f^.file_field `:object^ %>

XPT fsubmit " <%= f.submit...
<%= `f^.submit '`label^' %>

XPT render_partial synonym=rp " <%= render :partial...
XSET name=Echo('')
<%= render :partial => "`name^" %>

XPT submit_tag " <%= submit_tag...
<%= submit_tag "`label^" %>

XPT stylesheet_link_tag synonym=slt " <%= stylesheet_link_tag...
<%= stylesheet_link_tag `^ %>

XPT javascript_include_tag synonym=jit " <%= javascript_include_tag...
<%= javascript_include_tag `^ %>

XPT csrf_meta " <%= scrf_meta_tag %>
<%= csrf_meta_tag %>
