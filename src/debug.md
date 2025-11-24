---
layout: default
title: Debug Info
---

# Debug Page

## Site Metadata Test

```
site.metadata = <%= site.metadata.inspect %>
site.metadata.class = <%= site.metadata.class %>
site.data = <%= site.data.inspect %>
```

<% if site.metadata %>
Metadata title: <%= site.metadata.title %>
Metadata tagline: <%= site.metadata.tagline %>
<% else %>
site.metadata is nil or false
<% end %>

<% if site.data.site_metadata %>
Via site.data.site_metadata: <%= site.data.site_metadata.inspect %>
<% end %>

<% if site.data.test %>
Test data loaded: <%= site.data.test.inspect %>
<% else %>
Test data NOT loaded
<% end %>

## Site configuration:
- source: <%= site.source %>
- root_dir: <%= site.root_dir %>
- config: <%= site.config.inspect %>

## All available site methods:
<%= site.methods.sort.join(", ") %>
