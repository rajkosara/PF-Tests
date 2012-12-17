Given /^I navigate to (?:an|a|the) (.*) page$/ do |page_name|
  #creates the instance variable that is the site
  @british_council = Model::BritishCouncil.new
  case page_name
  when 'login'
    @british_council.login.load
  when 'home'
    @british_council.home.load
  when 'create press release' 
    @british_council.create_press_release.load
    step "I create a press release object"
  else raise "Haven't mapped the '#{page_name}' page"
  end
end