require 'spec_helper'

feature 'Edit property bathrooms' do
  include Navigation::Helpers

  background do
  	property
    go_to 'edit property page'
  end

	given(:elem_selector) { '#property-bathrooms'  }
	given(:increaser) 	  { "#{elem_selector}-inc" }
	given(:decreaser) 	  { "#{elem_selector}-dec" }

  given(:property) { create :property, type: 'apartment', rooms: 2, bathrooms: 1 }

	scenario 'default bathrooms' do
		within(elem_selector) do
  		expect(page).to have_content 1
  	end
  end

  scenario 'increase property bathrooms' do
	  background do
      click_link increaser
	  end

    it 'sets rooms to 2' do
    	within(elem_selector) do      
      	expect(page).to have_content 2
      end
    end
  end

  scenario 'decrease property bathrooms to 0 for type: apartment (shared bathroom?)' do
	  background do
      click_link decreaser
	  end

    it 'sets bathrooms to 0' do
    	within(elem_selector) do      
      	expect(page).to have_content 0
      end
    end
  end
end