class SiteBuilder < Bridgetown::Builder
  def build
    # Load site metadata from _data/site_metadata.yml
    hook :site, :after_init do
      metadata_path = File.join(site.source, '_data', 'site_metadata.yml')

      if File.exist?(metadata_path)
        require 'yaml'
        loaded_data = YAML.load_file(metadata_path)
        site.metadata.merge!(loaded_data)
        Bridgetown.logger.info "SiteBuilder", "Loaded site metadata from #{metadata_path}"
        Bridgetown.logger.debug "SiteBuilder", "Metadata content: #{loaded_data.inspect}"
      else
        Bridgetown.logger.error "SiteBuilder", "site_metadata.yml not found at #{metadata_path}"
      end
    end
  end
end

