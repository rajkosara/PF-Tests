Then /^the description meta tag is displayed on the blog page$/ do
  @british_council.blog.description_meta_tag[:content].should == @blog.summary
end

Then /^the title meta tag is displayed on the blog page$/ do
  @british_council.blog.title_meta_tag.text.should include @blog.title
end

Then /^the filename of the blog post will not include the stop words$/ do
  @british_council.blog.filename.should_not include("a" && "an" && "as" && "but" && "is" && "off" && "on" && "onto" && "the")
end

Then /^the filename of the blog post will not include the punctuation marks$/ do
  @british_council.blog.filename.should_not include('"' && '_' && ':' && '|' && '{' && '}' && '&' && '@' && '/')
end