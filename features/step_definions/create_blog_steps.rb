#this step should only be used as part of other steps and not in scenarios
Given /^I create a blog post object$/ do
  @blog = Model::Domain::Content.new
  @blog.set_content_type :blog
end

Then /^the create blog page is displayed$/ do
  @british_council.create_blog.should be_displayed
end

When /^I submit a blog page$/ do
  step "the create blog page is displayed"
  @british_council.create_blog.title.set @blog.title
  @british_council.create_blog.summary.set @blog.summary
  @british_council.create_blog.body.native.send_key @blog.body
  step "I save the blog page"
end

When /^I save the blog page$/ do
  @british_council.create_blog.save_button.click
end

When /^I enter a title of "(.*?)" for the blog page$/ do |title|
  @british_council.create_blog.title.set title
end

When /^I enter a title containing some punctuation marks$/ do
  @british_council.create_blog.title.set 'Title with punctuation marks " _ : | {} & @ /'
end