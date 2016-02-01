require 'rubygems'
require 'watir'
require 'nokogiri'
require 'open-uri'

class SearchResults
  attr_accessor :link
  def initialize(query)
    @query=query
    @browser=Watir::Browser.new
    @browser.goto "http://google.com"
    @browser.text_field(name: 'q').set(@query)
    @browser.button(name: 'btnG').click
  end


  def link
    @browser.links(:css ,'.r a').collect(&:href)
  end

  def title
    @browser.titles(:css,".r a")
  end
  def desc
    @browser.descs(:css,".st")
  end

  def length
    # puts "No of Results : #{@browser.element(:css,'.srg .r a , span+ .r a').count}"
  end
end

sr=SearchResults.new("ruby oops")
link=sr.link
title=sr.title
desc=sr.desc
puts link.count
puts desc.count
puts title.count
sr.length
desc.each do
  |a| puts a.text
end
puts "asdsf"







#puts browser.text

#puts browser.at_css("#res").text

#result=Nokogiri::HTML(open(test))
#puts result.at_css("title").text
#result.css('._Rm').each { |link| puts link['href'] }

