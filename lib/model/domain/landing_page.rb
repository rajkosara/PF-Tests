class Model::Domain::LandingPage < Model::Domain::Content
  def initialize
    @title = "Landing Page Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @summary = "Landing Page Summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @body = "Landing Page Description \n #{Time.current.strftime("%T")} #{String.random(4)}"
    @menu_title = "Landing Page Menus #{Time.current.strftime("%T")} #{String.random(4)}"
  end
end