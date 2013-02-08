class Model::Section::DrupalAdminHeader < SitePrism::Section
  element :username, ".admin-menu-account a"
end