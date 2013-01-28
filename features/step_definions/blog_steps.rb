Then /^the description meta tag is displayed on the blog page$/ do
  @british_council.blog.description_meta_tag[:content].should == @blog.summary
end