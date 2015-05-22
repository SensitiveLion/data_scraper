require "pry"
require "json"
require 'wikipedia'
page = Wikipedia.find( 'Bob Hasan' )

  split = page.content.split("\n\n")

binding.pry
