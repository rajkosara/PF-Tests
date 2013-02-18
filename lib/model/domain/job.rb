#encoding: utf-8
class Model::Domain::Job < Model::Domain::Content
  attr_accessor :job_title
  attr_accessor :job_aim
  attr_accessor :tag
  attr_accessor :location
  attr_accessor :salary
  attr_accessor :duration
  attr_accessor :working_hours
  attr_accessor :annual_leave
  attr_accessor :closing_date
  attr_accessor :internal_ref
  attr_accessor :how_to_apply
  attr_accessor :role_overview
  attr_accessor :internal_link
  attr_accessor :external_link_title
  attr_accessor :external_link_link


  def initialize
    @job_title = "Job Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @summary = "Job Summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @job_aim = "Job Aim #{Time.current.strftime("%T")} #{String.random(4)}"
    @tag = "Job"
    @location = "Job Location #{Time.current.strftime("%T")} #{String.random(4)}"
    @salary = "£$90000"
    @duration = "Job Duration #{Time.current.strftime("%T")} #{String.random(4)}"
    @working_hours = "9am-5pm"
    @annual_leave = "5 weeks"
    @closing_date = ""
    @internal_ref = "Job Internal Ref #{Time.current.strftime("%T")} #{String.random(4)}"
    @how_to_apply = "Job How To Apply #{Time.current.strftime("%T")} #{String.random(4)}"
    @role_overview = "Job Role overView #{Time.current.strftime("%T")} #{String.random(4)}"
    @internal_link =  ""
    @external_link_title = "General info external link title #{Time.current.strftime("%T")} #{String.random(4)}"
    @external_link_link = "https://www.google.co.uk"
  end
end