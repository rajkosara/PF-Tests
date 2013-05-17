class Model::BritishCouncil
  def login
    Model::Page::Login.new
  end

  def find_exam
    Model::Page::FindExam.new
  end

  def home_page
    Model::Page::HomePage.new
  end
end