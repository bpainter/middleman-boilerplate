# ----------------------------------------------
# Basic Setup
# ----------------------------------------------
activate :livereload
activate :relative_assets
activate :directory_indexes

# ----------------------------------------------
# Page Processing
# ----------------------------------------------
require 'slim'

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :autolink => true, :smartypants => true

# ----------------------------------------------
# CSS Processing
# ----------------------------------------------
require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.preferred_syntax = :sass
#   config.output_style = :compact
# end

# ----------------------------------------------
# Page options, layouts, aliases and proxies
# ----------------------------------------------

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

# ----------------------------------------------
# Helpers
# ----------------------------------------------

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# ----------------------------------------------
# Directories
# ----------------------------------------------
set :css_dir, 'assets/stylesheets'

set :js_dir, 'assets/javascripts'

set :images_dir, 'assets/images'

# ----------------------------------------------
# International
# ----------------------------------------------
# activate :translation_helper
# activate :directory_indexes
# activate :i18n, :mount_at_root => :en

# ----------------------------------------------
# Build-specific configuration
# ----------------------------------------------
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_path, "/Content/images/"

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher
end
