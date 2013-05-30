Then(/^Only Course URLs should be shown$/) do
  @british_council.home_page.should_not have_find_examurl
  @british_council.home_page.should_not have_AddEditUser
  @british_council.home_page.should have_createcourse
  @british_council.home_page.should have_find_courseurl
  sleep 3
end

Then(/^Only Find Exam URL should be shown$/) do
  @british_council.home_page.should have_find_examurl
  @british_council.home_page.should_not have_AddEditUser
  @british_council.home_page.should_not have_createcourse
  @british_council.home_page.should_not have_find_courseurl
end

Then(/^All URLs should be shown$/) do
  @british_council.home_page.should have_find_examurl
  @british_council.home_page.should have_AddEditUser
  @british_council.home_page.should have_createcourse
  @british_council.home_page.should have_find_courseurl
end

Then(/^Only Add User URL should be show$/) do
  @british_council.home_page.should_not have_find_examurl
  @british_council.home_page.should have_AddEditUser
  @british_council.home_page.should_not have_createcourse
  @british_council.home_page.should_not have_find_courseurl
end