require "nokogiri"
require "open-uri"
require "pry"

doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Apple_Inc."))
header = []
sub_header = []
text = []

doc.css('p + h2').each do |h|
  header << h.text
end

doc.css('.mw-body h3').each do |s_h|
  sub_header << s_h.text
end

doc.css('p').each do |p|
  if p.text.length != 0
    text << p.text
  end
end



binding.pry
