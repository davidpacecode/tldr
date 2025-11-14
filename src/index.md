---
# Feel free to add content and custom Front Matter to this file.

layout: default
---

## too long; didn't read

This is where the tl;drs will go....


<% collections.tldrs.sort_by { |tldr| tldr.data.section }
  .group_by { |tldr| tldr.data.section }.each do |section, tldr| %>
  <%= section %>
<% end %>
