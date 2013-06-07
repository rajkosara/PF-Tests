class Model::Page::Exam < SitePrism::Page

  def initialize
    @start_date = "25/05/2013" #1.days.from_now.strftime("%Y-%m-%d")
    @end_date  =  "01/05/2013"#10.days.from_now.strftime("%Y-%m-%d")
  end
end