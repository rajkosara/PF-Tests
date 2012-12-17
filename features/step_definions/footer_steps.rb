Then /^the footer is displyed on the home page$/ do
  @british_council.home.footer.should be_visible
end