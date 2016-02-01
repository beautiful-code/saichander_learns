require 'rubygems'
require 'watir'

browser=Watir::Browser.new
browser.goto "http://google.com"
browser.text_field(name: 'q').set("ruby oops")
browser.button(name: 'btnG').click

link= browser.links(:css ,'.r a').collect(&:href)
puts link.class
link.each do
  |a| puts a
  puts "asdsf"
end
title=browser.titles(:css,".r a")
puts title.class
title.each do
  |b| puts b.text
end
desc=browser.descs(:css,".st")
puts desc.class
desc.each do
  |c| puts c.text
end
