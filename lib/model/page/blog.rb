class Model::Page::Blog < SitePrism::Page
  element :description_meta_tag, "meta[name='description'][content]"
  element :title_meta_tag, "title"
end