class Model::Domain::LandingPage < Model::Domain::Content
    attr_accessor :url
  def initialize
    @title = "Landing Page Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @summary = "Landing Page Summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @body = "Landing Page Description \n #{Time.current.strftime("%T")} #{String.random(4)}"
    @menu_title = "Landing Page Menus #{Time.current.strftime("%T")} #{String.random(4)}"
    @alternate_filename = "Landing Page Alternate Filename #{String.random(4)}"
    @url = ""
  end

  def internal_url
    @url.gsub("#{Helpers::Config['korea_site_root']}/", "").downcase.gsub(" ","-")
  end
end