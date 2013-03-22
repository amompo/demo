require 'spec_helper'

feature 'show one property' do
  background do
    visit property_path(1)
  end

  scenario 'hello' do    
    page.should have_content '10 bathrooms'
  end
end