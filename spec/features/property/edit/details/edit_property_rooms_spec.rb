require 'spec_helper'

feature 'Edit property rooms' do
  include Navigation::Helpers

  background do
  	property
    go_to 'edit property page'
  end

	given(:elem_selector) { '#property-rooms'  }
	given(:increaser) 	  { "#{elem_selector}-inc" }
	given(:decreaser) 	  { "#{elem_selector}-dec" }

  given(:property) { create :property, type: 'apartment', rooms: 1  }

	scenario 'default rooms' do
		within(elem_selector) do
  		expect(page).to have_content 1
  	end
  end

  scenario 'increase property type' do
	  background do
      click_link increaser
	  end

    it 'sets rooms to 2' do
    	within(elem_selector) do      
      	expect(page).to have_content 2
      end
    end
  end

  scenario 'decrease property type to 0 sets rooms to maximum allowed for type: apartment' do
	  background do
      click_link decreaser
	  end

    it 'sets rooms to 4' do
    	within(elem_selector) do      
      	expect(page).to have_content 4
      end
    end
  end
end