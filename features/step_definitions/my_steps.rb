Given(/^i am in cal page$/) do

  url=$driver.title
  puts url
  $driver.find_element(:xpath,"//a[text()='Loan Calculator']").click
end

When(/^I enter loan amount in cal page$/) do
  $driver.find_element(:xpath,"//input[@id='cloanamount']").click
  $driver.find_element(:xpath,"//input[@id='cloanamount']").clear
  $driver.find_element(:xpath,"//input[@id='cloanamount']").send_keys '10000'

end

And(/^i enter loan term$/) do
  $driver.find_element(:xpath,"//input[@id='cloanterm']").click
  $driver.find_element(:xpath,"//input[@id='cloanterm']").clear
  $driver.find_element(:xpath,"//input[@id='cloanterm']").send_keys "2"

end

And(/^i enter interest rate$/) do
  $driver.find_element(:xpath,"//input[@id='cinterestrate']").click
  $driver.find_element(:xpath,"//input[@id='cinterestrate']").clear
  $driver.find_element(:xpath,"//input[@id='cinterestrate']").send_keys"5"
end

And(/^i enter compound$/) do

    dropdown = $driver.find_element(id: 'ccompound')
     select_list = Selenium::WebDriver::Support::Select.new(dropdown)
     select_list.select_by(:text, 'Daily')

end

And(/^i enter pay back rate$/) do
  # puts $driver.find_element(:id,'cpayback').text.include?('Every Year')
   dropdown = $driver.find_element(id: 'cpayback')
     select_list = Selenium::WebDriver::Support::Select.new(dropdown)
   select_list.select_by(:text, 'Every Year')
end

And(/^i click calculate button$/) do
  $driver.find_element(:xpath,"//input[@value='Calculate']").click


end


Then(/^chk the result$'(.*)'/) do|output|
  Result= $driver.find_element(:link_text,"View Amortization Table").click
  if Result==output
    puts "test passed"

  end
end

