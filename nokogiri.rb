require "nokogiri"
require "open-uri"
require "pry"

doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Apple_Inc."))
header = []
sub_header = []
text = []

doc.css('p + h2').each do |h|
  if h.text != "Contents" && h.text != "References"&& h.text != "Further reading" && h.text != "External links"
    header << h.text
  end
end

doc.css('p + h3').each do |s_h|
  sub_header << s_h.text
end

doc.css('p').each do |p|
  if p.text.length != 0
    text << p.text
  end
end



binding.pry
