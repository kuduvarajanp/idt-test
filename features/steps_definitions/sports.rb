require_relative '../support/helpers.rb'

Given(/^I visit (.*)$/) do |url|
  @url = false
  @url = url
  visit_url
end


Then(/^I should see a id (.+)$/) do |chartid| 
   chart_id = chartid
   assert_xpath_selector(chart_id)  
end

Then(/^I should see the title (.*)$/) do |text|
  if page.has_css?("iframe") #Check inside iframe if present
   		page.within_frame 0 do
      		expect(page).to have_content(text) 
      end                
    end
 end

Then(/^I should see a Quiz with title (.*)$/) do |text|
   if page.has_css?("iframe") #Check inside iframe if present
   		page.within_frame 0 do
      		expect(page).to have_content(text) 
      end    
   else
    	 	expect(page).to have_content(text)            
   end
end


