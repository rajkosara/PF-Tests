Then /^the header is displyed on the home page$/ do
  @british_council.home.header.should be_visible
end

Then /^the header contains the home link and icon$/ do
  @british_council.home.header.home_icon.should be_present
end

Then /^the header contains the learn english menu$/ do
  @british_council.home.header.learn_english.should be_visible
end

Then /^the header contains the take an exam menu$/ do
  @british_council.home.header.take_an_exam.should be_visible
end

Then /^the header contains the study in the uk menu$/ do
  @british_council.home.header.study_in_the_uk.should be_visible
end

Then /^the header contains the whats on link$/ do
  @british_council.home.header.whats_on.should be_visible
end

Then /^the header contains our work in arts, education and society link$/ do
  @british_council.home.header.our_work.should be_visible
end