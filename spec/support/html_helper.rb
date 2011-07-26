require 'nokogiri'

def get_tag_values_in_content(content, tag_name)
  parsed = Nokogiri::HTML(content)
  parsed.search(tag_name).map { |tag| tag.content }
end