class Model::Page::RegionalLanguage < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/admin/config/regional/language"
  set_url_matcher /\/admin\/config\/regional\/language/

  elements :language, "#language-order tbody td strong"

  def default_language
    language.first
  end
end