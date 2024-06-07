module LocationsHelper
  def google_map_url(name)
    sanitized_name = name.gsub(/\s/, '+')
    url = "https://www.google.com/maps/embed/v1/place?q=#{sanitized_name}&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"
  end
end
