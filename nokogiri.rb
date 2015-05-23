require "nokogiri"
require "open-uri"
require "pry"

doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Tre_Fontane_Abbey"))
text = []
doc.css('p').each do |p|
  if p.text.length != 0
    text << p.text
  end
end

binding.pry
