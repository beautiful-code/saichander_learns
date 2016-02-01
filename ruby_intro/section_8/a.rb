require 'rubygems'
require 'nokogiri'
require 'open-uri'

url="http://www.walmart.com/search/?query=lenovo"
doc=Nokogiri::HTML(open(url))
puts doc.at_css("title").text
doc.css("#tile-container").each do |item|
  title_text= item.css(".js-product-title").text
  price = item.css(".price-display").text[/\$[0-9\.]+/]
  puts "#{title_text}:#{price}"
  puts "\n"
end
