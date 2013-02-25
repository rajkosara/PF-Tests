Then /^the course page is created$/ do
  @british_council.course.status.text.should include "Course #{@course.title} has been created."
end