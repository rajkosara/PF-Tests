class Model::Section::UserRecord < SitePrism::Section
  element :username, "a.username"
  element :roles, ".item-list"
end