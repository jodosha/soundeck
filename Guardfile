group :server do
  guard "puma", port: ENV["HANAMI_PORT"] || 2300 do
    watch(%r{config/*})
    watch(%r{lib/*})
    watch(%r{apps/*})
  end
end

