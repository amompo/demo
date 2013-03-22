require 'spec_helper'

feature 'Edit property type' do
  include Navigation::Helpers

  background do
  	create :valid_property, rental_cost: 6000

    go_to 'edit property page'
  end

	given(:elem_selector) { '#property-type'  }
	given(:increaser) 	  { "#{elem_selector}-inc" }
	given(:decreaser) 	  { "#{elem_selector}-dec" }

  given(:property) { create :property, type: 'apartment'  }

	scenario 'default cost' do
		within(elem_selector) do
  		expect(page).to have_content 'apartment'
  	end
  end

  scenario 'increase property type' do
	  background do
      click_link increaser
	  end

    it 'sets type to room' do
    	within(elem_selector) do      
      	expect(page).to have_content 'room'
      end
    end
  end

  scenario 'decrease property type' do
	  background do
      click_link decreaser
	  end

    it 'sets type to house' do
    	within(elem_selector) do      
      	expect(page).to have_content 'house'
      end
    end
  end
end