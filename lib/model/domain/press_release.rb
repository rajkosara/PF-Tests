class Model::Domain::PressRelease < Model::Domain::Content
  attr_accessor :internal_link
  attr_accessor :external_link_title
  attr_accessor :external_link_link
  attr_accessor :publish_date
  attr_accessor :notes_to_editor
  attr_accessor :about_the_british_council

  def initialize
    @title = "Press Release Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @summary = "Press Release Summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @body = "Press Release Body #{Time.current.strftime("%T")} #{String.random(4)}"
    @internal_link = ""
    @external_link_title = "Press Release external link title #{Time.current.strftime("%T")} #{String.random(4)}"
    @external_link_link = "https://www.google.co.uk"
    @publish_date = 10.days.from_now
    @notes_to_editor = "Press Release Notes to editor #{Time.current.strftime("%T")} #{String.random(4)}"
    @menu_title = "General info menu #{String.random(4)}"
    @about_the_british_council = "Press Release about british council #{Time.current.strftime("%T")} #{String.random(4)}"
  end
end
