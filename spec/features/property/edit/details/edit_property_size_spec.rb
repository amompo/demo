require 'spec_helper'

feature 'Edit property size' do
  include Navigation::Helpers

  background do
  	property
    go_to 'edit property page'
  end

	given(:elem_selector) { '#property-size'  }
	given(:increaser) 	  { "#{elem_selector}-inc" }
	given(:decreaser) 	  { "#{elem_selector}-dec" }

  given(:property) { create :property, type: 'apartment', rooms: 2, size: '40 sqm'  }

	scenario 'default size' do
		within(elem_selector) do
  		expect(page).to have_content '40 m2'
  	end
  end

  scenario 'increase property size' do
	  background do
      click_link increaser
	  end

    it 'sets size to 50' do
    	within(elem_selector) do      
      	expect(page).to have_content '50 m2'
      end
    end
  end

  scenario 'decrease property type to 0 sets rooms to maximum allowed for type: apartment' do
	  background do
      click_link decreaser
	  end

    it 'sets rooms to 30' do
    	within(elem_selector) do      
      	expect(page).to have_content '30 m2'
      end
    end
  end
end