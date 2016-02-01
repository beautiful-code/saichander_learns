GOOGLE_SEARCH_CX = "..."
require 'rubygems'
require 'rexml/document'
require 'google_custom_search'


results = GoogleCustomSearch.search("Ruby oops")
results.total            # number of results (integer)
results.pages            # array of result objects
results.suggestion       # suggested search term, if any

results.pages.each do |result|
  result.title           # result title
  result.url             # result URL
  result.description     # excerpt, with terms highlighted
end
