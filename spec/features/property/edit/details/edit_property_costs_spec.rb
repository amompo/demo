require 'spec_helper'

feature 'Edit property costs' do
  include Navigation::Helpers

  background do
		property
    go_to 'edit property page'
  end

	given(:elem_selector) { '#property-cost'  }
	given(:increaser) 	  { "#{elem_selector}-inc" }
	given(:decreaser) 	  { "#{elem_selector}-dec" }

  given(:property) { create :valid_property, rental_cost: 6000  }

	scenario 'default cost' do
		within(elem_selector) do
  		expect(page).to have_content '6000'
  	end
  end

  scenario 'increase rental cost' do
	  background do
      click_link increaser
	  end

    it 'Increases rental cost' do
    	within(elem_selector) do      
      	expect(page).to have_content '6500'
      end
    end
  end
end