class Helpers::Path
  def self.thumbnail_image_location
    File.join(Helpers::Config['british_council_site_root'], "#{Helpers::Config['thumbnail_image_location']}/")
  end

  def self.image_location
    File.join(Helpers::Config['british_council_site_root'], "#{Helpers::Config['image_location']}/")
  end
end