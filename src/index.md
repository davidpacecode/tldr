---
# Feel free to add content and custom Front Matter to this file.

layout: default
---

## too long; didn't read

This is where the tl;drs will go....


<% collections.tldrs.sort_by { |tldr| tldr.data.sort_order }.group_by { |tldr| tldr.data.category }.each do |category, tldrs| %>
  <wa-tree class="custom-icons">
    <wa-icon name="square-plus" variant="solid" slot="expand-icon"></wa-icon>
    <wa-icon name="square-minus" variant="solid" slot="collapse-icon"></wa-icon>
    <wa-tree-item>
      <%= category %>
      <%= render "tldrs", tldrs: tldrs %>
    </wa-tree-item>
  </wa-tree>
<% end %>

<style>
  .custom-icons wa-tree-item::part(expand-button) {
    /* Disable the expand/collapse animation */
    rotate: none;
  }
</style>



