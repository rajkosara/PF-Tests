class Model::Section::DrupalAdminHeader < SitePrism::Section
  element :username, ".admin-menu-account a"
  element :log_out, ".admin-menu-action a[href*='logout']"
end