require 'net/http'
require 'nokogiri'
require 'uri'
require 'pp'


uri = URI.parse("http://sports.yahoo.com/nfl/new-york-jets-miami-dolphins-20151004015/")

html = Net::HTTP.get(uri)

noko_doc = Nokogiri.parse(html)

puts
puts "**************"
puts "Ryan Fitzpatrick - QB - Stats"
puts "**************"
print noko_doc.css('tr')[5]
puts
puts
#<td class="nfl-stat-type-102 completions" title="Completions">16</td>
print noko_doc.css('tr')[5].css("td")

puts
#Ryan Tannehill - QB - Stats
# print noko_doc.css('tr')[7]

# print noko_doc.css('tr')[9]




