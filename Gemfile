source 'https://rubygems.org'

gem "nokogiri"

gem "pismo"

gem "mechanize"

agent = Mechanize.new
@google = agent.get('https://www.cia.gov/library/publications/the-world-factbook/')
binding.pry
google_form =  @google.form('f')
google_form.q = query
@google = agent.submit(google_form)
