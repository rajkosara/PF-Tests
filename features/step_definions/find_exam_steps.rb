Given(/^Iam on the Find Exam Page$/) do
  step "Iam on the Home Page"
  step "I click on Find an Exam link"
end

Then(/^Find an Exam Page should display locations$/) do
  #puts @british_council.find_exam.locationone.value
  @british_council.find_exam.should have_location_vienna
end

When(/^I select From Date greater than To Date$/) do
  @british_council.find_exam.date_picker.first.click

 ##
 ## @today=@british_council.find_exam.days.select do |day_number|
 ##   puts day_number.text
 ## end
##

  @british_council.find_exam.start_date.click
  @british_council.find_exam.date_picker.last.click

  ##@today=@british_council.find_exam.days.select do |day_number|
  ##  puts day_number.text
  ## end
  @british_council.find_exam.prev_month.first.click
  @british_council.find_exam.end_date.first.click
end

Then(/^Date Error message should be displayed$/) do
  @british_council.find_exam.date_error.text == "Registration From date cannot be greater than To date"
end

When(/^I select a Location$/) do
  @british_council.find_exam.location_vienna.click
end

When(/^I Search for Exam Product$/) do
  @british_council.find_exam.search_button.click
  sleep 3
end

Then(/^The results should be from the selected location$/) do
  if @british_council.find_exam.records_count.text.should include("Showing")
    puts @british_council.find_exam.records_count.text
  else
    puts "No Records"
  end
  
  #puts "Showing Records" if @british_council.find_exam.records_count.text.should include("Showing")
end

