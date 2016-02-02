require 'rubygems'
require 'watir'
require 'nokogiri'
require 'open-uri'

class SearchResults
  def initialize(query)
    @query=query
    @browser=Watir::Browser.new
    @browser.goto "http://google.com"
    @browser.text_field(name: 'q').set(@query)
    @browser.button(name: 'btnG').click
    sleep(5)
    @page=Nokogiri::HTML(@browser.html)
    @search_result_elements = @page.css("div.g")
    @search_result_objects = @search_result_elements.collect {|result| SearchResult.new(result)}
  end

  def results
    return @search_result_objects
  end

  def size
    puts "No. of search results: #{@page.css("div.g").length}"
    puts @search_result_elements.size
  end
end


class SearchResult
  def initialize(obj)
    @obj = obj
  end

  def url
    puts @obj.css("._Rm").text
  end

  def title
    puts  @obj.css(".r a").text
  end

  def desc
    puts @obj.css(".st").text
  end
end

sr=SearchResults.new("ruby oops")
sr.size
sr.results[1].url
sr.results[0].title
sr.results[3].desc

