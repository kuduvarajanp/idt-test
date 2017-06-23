require_relative '../support/helpers.rb'

Given(/^I visit '(.*)'$/) do |url|
  @url = false
  @url = url
  visit_url
end

Then(/^I should see a Datapic$/) do
    datapic_id = "ns_datapic_ebola-updates"
    assert_xpath_selector(datapic_id)
    # expect(page).to have_selector(:xpath, '//*[@id="ns_datapic_ebola-updates"]')
end

Then(/^I should see the text 'Includes one in the US and six in Mali'$/) do
   expect(page).to have_content("Includes one in the US and six in Mali")
end


# Then(/^I should see a Quiz with text 'Which film star and amateur pilot is being investigated by US aviation authorities after a near\-miss with a jet airliner\?'$/) do
#    if page.has_css?("iframe") #Check inside iframe if present
#    		page.within_frame 0 do
#       		expect(page).to have_content("Which film star and amateur pilot is being investigated by US aviation authorities after a near-miss with a jet airliner?") 
#       end                
#     end
# end


Then(/^I should see a imageslider$/) do
  imageslider_id = "news_idt__image-slider__oxfordstreet"
  assert_xpath_selector(imageslider_id)
end

Then(/^I should see the text 'Christmas rush hour in Oxford Street'$/) do
  expect(page).to have_content("Christmas rush hour in Oxford Street") 
end