require 'nokogiri'
require 'open-uri'
require 'httparty'


#doc=Nokogiri::HTML(open(url))
#doc.css("#rso").each do |s|
 #p = s.text
  #puts p
#end
#
class SearchResults
  include HTTParty
  base_uri "https://www.google.co.in/search"
  format :html
  def initialize(service)
#response = HTTParty.get('https://www.google.co.in/search?q=RUBY#q=ruby+oops')
    HTTParty.get("",query:{query: service})["elements"]
  end
  def size
  end
  def results

  end
end

SearchResults sr = SearchResults.new("ruby oops")
