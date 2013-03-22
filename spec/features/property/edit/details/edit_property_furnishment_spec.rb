require 'spec_helper'

feature 'Edit property furnishment' do
  include Navigation::Helpers

  background do
  	property
    go_to 'edit property page'
  end

	given(:elem_selector) { '#property-furnishment'  }
	given(:switcher) 	  	{ "#{elem_selector}-switch" }

  given(:property) { create :property, type: 'apartment', furnishment: 'unfurnished'  }

	scenario 'default cost' do
		within(elem_selector) do
  		expect(page).to have_content 'unfurnished'
  	end
  end

  scenario 'press property furnishment switcher' do
	  background do
      click_link switcher
	  end

    it 'sets furnishment to furnished' do
    	within(elem_selector) do      
      	expect(page).to have_content 'furnished'
      end
    end

    it 'sets furnishment back to "unfurnished" when switcher clicked again' do
    	click_link switcher

    	within(elem_selector) do      
      	expect(page).to have_content 'unfurnished'
      end
    end
  end
end