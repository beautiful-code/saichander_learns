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
    @nk=Nokogiri::HTML(@browser.html)
  end
  def results
    @NK_obj=@nk.css("._SWb , .st , .r")
    puts @NK_obj.class
    obj=SearchResult.new(@NK_obj)
    return obj
  end
end


class SearchResult
  def initialize(obj)
    @obj=obj
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
sr.results.url
sr.results.title
sr.results.desc

