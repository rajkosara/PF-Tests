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
  when 'create blog'
    @british_council.create_blog.load
    step "I create a blog post object"
  when 'create faq'
    @british_council.create_faq.load
    step "I create a faq object"
  when 'create general info'
    @british_council.create_general_info.load
    step "I create a general info object"
  when 'create job'
    @british_council.create_job.load
    step "I create a job object"
  when 'create event'
    @british_council.create_event.load
    step "I create a event object"
  when 'create landing page'
    @british_council.create_landing_page.load
    step "I create a landing page object"
  else raise "Haven't mapped the '#{page_name}' page"
  end
end

Given /^I am using a mobile device$/ do
  config.current_driver = :iphone_chrome
  Helpers::Browser.resize_window
end