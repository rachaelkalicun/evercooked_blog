xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  site_url = "#{config[:url]}"
  xml.title "Evercooked"
  xml.subtitle "Honoring Traditions & Legacy through Cooking"
  xml.id URI.join(site_url, blog('blog').options.prefix.to_s)
  xml.link "href" => URI.join(site_url, blog('blog').options.prefix.to_s)
  xml.link "href" => URI.join(site_url, current_page.path), "rel" => "self"
  xml.updated(blog('blog').articles.first.date.to_time.iso8601) unless blog('blog').articles.empty?
  xml.author { xml.name "Rachael Kalicun" }

  blog('newsletters').articles[0..10].select(&:published?).each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => URI.join(site_url, article.url.chomp('/'))
      xml.id URI.join(site_url, article.url.chomp('/'))
      xml.published article.date.to_time.iso8601
      xml.updated File.mtime(article.source_file).iso8601
      xml.author { xml.name "Rachael Kalicun" }
      xml.summary article.summary, "type" => "html"
      xml.content article.body, "type" => "html"
    end
  end

  blog('blog').articles[0..10].select(&:published?).each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => URI.join(site_url, article.url.chomp('/'))
      xml.id URI.join(site_url, article.url.chomp('/'))
      xml.published article.date.to_time.iso8601
      xml.updated File.mtime(article.source_file).iso8601
      xml.author { xml.name "Rachael Kalicun" }
      xml.summary article.summary, "type" => "html"
      xml.content article.body, "type" => "html"
    end
  end
end
