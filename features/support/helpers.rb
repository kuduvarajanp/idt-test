module Helpers

def visit_url
  @env=URI.parse(@url).host
  if @env.include? "stage"
  	@url = @url + '?_x_candy_override=https://api.stage.bbc.co.uk&_x_idtfetcher_override=https://www.stage.bbc.co.uk'
  end
  visit @url
end 

def assert_xpath_selector(selector)
  expect(page).to have_selector(:xpath, '//*[@id='+"\"#{selector}\""+']')
end

end

World(Helpers)