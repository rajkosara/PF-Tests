class Model::BritishCouncil
  def login
    Model::Page::Login.new
  end

  def find_exam
    Model::Page::FindExamPage.new
  end
end