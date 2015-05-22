require "Mechanize"

require "pry"

agent = Mechanize.new
@google = agent.get('https://www.cia.gov/library/publications/the-world-factbook/wfbExt/region_noa.html')
pp @google
