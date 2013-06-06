class Model::Page::FindUser < SitePrism::Page

  element :user_name,'#UserName'
  element :first_name,'#FirstName'
  element :last_name,'#LastName'
  element :error_label,'#lblError'
  element :records_count,'.jtable-page-info'
  element :find_user,'#LoadRecordsButton'
  element :clear_user,'#ClearButton'
  elements :add_record,'td a[href*="Create"]'
  elements :edit_record,'td a[href*="Edit"]'
  element :no_records,'td'

  @add_user_name="kan"

end