module Navigation
  module Helpers
    def go_to place
      case place
      when 'edit property page'
        visit edit_property_path(property)
      when 'property page'
        visit property_path(property)
      when 'properties page', 'property list page'
        visit properties_path
      else
        raise "no place"
      end
    end
  end
end