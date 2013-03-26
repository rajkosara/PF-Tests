class Model::Section::SocialLinkRows < SitePrism::Section
  element :name, "input[type=text][id*=edit-social-media-links][name*=name]"
  element :checkbox, "[type=checkbox][id*=edit-social-media-links]"
end