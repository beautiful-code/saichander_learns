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
    sleep(10)
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

  def size
    puts "No of Results : #{ @browser.titles(:css,".r a").count}"
  end
end

sr=SearchResults.new("ruby oops")
while true do
  puts "1.size 2.title 3.link 4.description"
  choice = gets.chomp.to_i

  case choice
  when 1
    sr.size
  when 2
    title=sr.title
    print "Enter the search result number you want: "
    i = gets.chomp.to_i
    i=i-1
    puts title[i].text
  when 3
    link=sr.link
    print "Enter the search result number you want: "
    i = gets.chomp.to_i
    i=i-1
    puts link[i]
  when 4
    desc=sr.desc
    print "Enter the search result number you want: "
    i = gets.chomp.to_i
    i=i-1
    puts desc[i].text
  else
    puts "Wrong Choice"
  end
end








#puts browser.text

#puts browser.at_css("#res").text

#result=Nokogiri::HTML(open(test))
#puts result.at_css("title").text
#result.css('._Rm').each { |link| puts link['href'] }

