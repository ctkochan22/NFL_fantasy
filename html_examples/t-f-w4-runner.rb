require 'net/http'
require 'nokogiri'
require 'uri'
require 'pp'


uri = URI.parse("http://sports.yahoo.com/nfl/houston-texans-atlanta-falcons-20151004001/")

html = Net::HTTP.get(uri)

noko_doc = Nokogiri.parse(html)

#Ryan Fitzpatrick - QB - Stats
# print noko_doc.css('tr')[5]

print noko_doc.css('tr')[9]

