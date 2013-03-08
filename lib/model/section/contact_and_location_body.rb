class Model::Section::ContactAndLocationBody < SitePrism::Section
  elements :tables, "table"

  def telephone_enquiries
    tables.first
  end

  def visitor_opening_hours
    tables.last
  end
end