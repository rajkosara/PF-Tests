class Model::Page::AddUser < SitePrism::Page
  #set_url "#{Helpers::Config['pf_site_root']}/UserAccount/"

  element :country_england,'li [name="England"]'
  element :btn_next,'#btnNext'
  element :btn_create,'#SubmitUserAccount'
  element :btn_amend,'#AmendUser'

  element :manager_checkbox,'input[value="3"]'
  element :exam_admin_checkbox,'input[value="1"]'
  element :course_admin_checkbox,'input[value="2"]'
  elements :user_roles_checkboxes,'input[name=SelectedRoles]'

  element :role_err_msg,'#lblRoleSelectErrorMsg'


  element :course_admin,'input#Roles[data-id="2"]'
  element :exam_admin,'input#Roles[data-id="1"]'
  element :manager,'input#Roles[data-id="3"]'
  element :sys_admin,'input#Roles[data-id="4"]'

  element :first_name,'#FirstName'
  element :last_name,'#LastName'
  element :user_name,'#UserName'

  element :confirm_msg,'#body' 
  element :user_region,'div select'
  element :country_uk,'select option[value="7"]'


end