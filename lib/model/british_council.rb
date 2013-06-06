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

  def create_course
    Model::Page::CreateCourse.new
  end
  
  def find_user
    Model::Page::FindUser.new
  end

  def select_country
    Model::Page::SelectCountry.new
  end

  def exam
    Model::Page::Exam.new
  end

  def add_user
    Model::Page::AddUser.new
  end
end