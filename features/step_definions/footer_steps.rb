Then /^the footer is displyed on the home page$/ do
  @british_council.home.footer.should be_visible
end

Then /^the footer contains the (about british council menu|partner with us menu|teach english menu)$/ do |menu|
  case menu
  when 'about british council menu'
    @british_council.home.footer.about_british_council_france.should be_visible
    @british_council.home.footer.about_british_council_france_link[:href].should include "/en/about"
  when 'partner with us menu'
    @british_council.home.footer.partner_with_us.should be_visible
    @british_council.home.footer.partner_with_us_link[:href].should include "/en/about/partnerships"
  when 'teach english menu'
    @british_council.home.footer.teach_english.should be_visible
    @british_council.home.footer.teach_english_link[:href].should include "/en/teach"
  end
end

Then /^the biographies link is displayed in the about british council menu$/ do
  @british_council.home.footer.about_british_council_france.should have_biographies
  @british_council.home.footer.about_british_council_france.biographies[:href].should include "/en/about/biographies"
end

Then /^the british council global link is displayed in the about british council menu$/ do
  @british_council.home.footer.about_british_council_france.should have_british_council_global
  @british_council.home.footer.about_british_council_france.british_council_global[:href].should include "http://www.britishcouncil.org"
end

Then /^the job opportunities link is displayed in the about british council menu$/ do
  @british_council.home.footer.about_british_council_france.should have_job_opportunities
  @british_council.home.footer.about_british_council_france.job_opportunities[:href].should include "/en/about/jobs"
end

Then /^the press enquiries link is displayed in the about british council menu$/ do
  @british_council.home.footer.about_british_council_france.press_enquiries[:href].should include "/en/about/press"
end

Then /^the why partner with us link is displayed in the partner with is menu$/ do
  @british_council.home.footer.partner_with_us.should have_why_partner_with_us
  @british_council.home.footer.partner_with_us.why_partner_with_us[:href].should include "/en/about/partnerships"
end

Then /^the contact partnerships link is displayed in the partner with is menu$/ do
  @british_council.home.footer.partner_with_us.should have_contact_partnerships
  @british_council.home.footer.partner_with_us.contact_partnerships[:href].should include "/en/about/partnerships-contact"
end

Then /^the our track record link is displayed in the partner with is menu$/ do
  @british_council.home.footer.partner_with_us.should have_our_track_record
  @british_council.home.footer.partner_with_us.our_track_record[:href].should include "/en/about/patnerships-track-record"
end

Then /^the courses for teachers of english is displayed in the teach english menu$/ do
  @british_council.home.footer.teach_english.should have_courses_for_english_teachers
  @british_council.home.footer.teach_english.courses_for_english_teachers[:href].should include "/en/teach/training"
end

Then /^the online teaching resources link is displayed in the teach english menu$/ do
  @british_council.home.footer.teach_english.should have_online_teaching_resources
  @british_council.home.footer.teach_english.online_teaching_resources[:href].should include "/en/teach/resources"
end

Then /^the teaching in the uk link is displayed in the teach english menu$/ do
  @british_council.home.footer.teach_english.should have_teaching_in_the_uk
  @british_council.home.footer.teach_english.teaching_in_the_uk[:href].should include "/en/teach/uk"
end