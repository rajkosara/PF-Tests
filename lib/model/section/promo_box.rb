class Model::Section::PromoBox < SitePrism::Section
  element :title, "h2"
  element :href, "a[href]:not(.bc-edit)"
  element :image, "img"

  def summary
    evaluate_script(%Q{ jQuery("p").text()})
  end
end