require "pry"
require "json"
require 'wikipedia'
page = Wikipedia.find( 'Bob Hasan' )

split = page.content.split(/(==.*==)/)

parsed = []

split.each do |string|

  string1 = string.to_s.gsub(/\[\[/,"" )

  string2 = string1.gsub(/\]\]/,"" )

  parsed << string2

end
wiki = Hash.new


binding.pry
