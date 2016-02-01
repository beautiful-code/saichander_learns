require 'rubygems'
require 'nokogiri'
require 'open-uri'

url="https://www.google.co.in/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=ruby+oops"

page=Nokogiri::HTML(open(url))
puts page.at_css("title").text

results=page.css("#ires")
puts results[0]
