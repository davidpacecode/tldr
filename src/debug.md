---
layout: default
title: Debug Info
---

# Debug Page

## Site Metadata Test (Built-in)

```
site.metadata = <%= site.metadata.inspect %>
site.metadata.class = <%= site.metadata.class %>
site.data = <%= site.data.inspect %>
site.metadata.title = <%= site.metadata.title.to_s %>
```

<% if site.metadata.title.to_s != "" %>
Metadata title: <%= site.metadata.title %>
Metadata tagline: <%= site.metadata.tagline %>
<% else %>
site.metadata.title is EMPTY or nil
<% end %>

<% if site.data.site_metadata %>
Via site.data.site_metadata: <%= site.data.site_metadata.inspect %>
<% end %>

## Manually Loading Metadata (Working Example)

<%
require 'yaml'
metadata_path = File.join(site.source, '_data', 'site_metadata.yml')
loaded_metadata = File.exist?(metadata_path) ? YAML.load_file(metadata_path) : {}
%>

**Direct file access WORKS:**
```
File path: <%= metadata_path %>
File exists: <%= File.exist?(metadata_path) %>
Loaded data: <%= loaded_metadata.inspect %>
Title from YAML: <%= loaded_metadata['title'] %>
Tagline from YAML: <%= loaded_metadata['tagline'] %>
```

**Using manually loaded data:**
- Title: **<%= loaded_metadata['title'] %>**
- Tagline: **<%= loaded_metadata['tagline'] %>**
- Email: **<%= loaded_metadata['email'] %>**

## Site configuration:
- source: <%= site.source %>
- root_dir: <%= site.root_dir %>
- config: <%= site.config.inspect %>

## All available site methods:
<%= site.methods.sort.join(", ") %>
