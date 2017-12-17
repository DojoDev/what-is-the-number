require 'rubygems'
require 'mechanize'


page = Mechanize.new

page = page.get('http://thehackernews.com/')

page.search('#Blog1 .hnews').each do |article|
    title = article.at('h2 a').text
    puts title
    puts "_______"
end