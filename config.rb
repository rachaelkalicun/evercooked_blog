# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :livereload, port: '4567'
set :relative_links, true


activate :blog do |blog|
  blog.name    = "blog"
  blog.layout = "blog"
  blog.prefix = "blog"
  blog.sources = "{title}.html"
  blog.permalink = "{title}"
  blog.default_extension = ".md"
  blog.taglink = "categories/{tag}.html"
  blog.tag_template = "tag.html"
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end

activate :blog do |blog|
  blog.name    = "newsletters"
  blog.layout = "blog"
  blog.prefix = "newsletters"
  blog.sources = "{title}.html"
  blog.permalink = "{title}"
  blog.default_extension = ".md"
  blog.taglink = "categories/{tag}.html"
  blog.tag_template = "tag.html"
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end

activate :directory_indexes

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :external_pipeline,
  name: :tailwind,
  command: "npx tailwindcss -i ./source/stylesheets/site.css -o ./dist/stylesheets/site.css #{"--watch" unless build?}",
  latency: 2,
  source: "./dist/"

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
page "/feed.xml", layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript, compressor: Terser.new
# end
