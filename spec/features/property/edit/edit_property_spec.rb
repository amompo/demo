require 'spec_helper'

feature 'Edit property' do
  include Navigation::Helpers

  background do
  	property
    go_to 'edit property page'
  end

	scenario 'should have a top section'
		within('#property-edit') do			
  		expect(page).to have_selector '#top'
  	end
  end

	scenario 'should have a bottom section'
		within('#property-edit') do			
  		expect(page).to have_selector '#bottom'
  	end
  end

	scenario 'should have a top bar with a facebook like button' do
		within('#property-edit') do			
  		expect(page).to have_selector '#facebook-like'
  	end
  end

	scenario 'should have a bottom section with an accordion'
		within('#bottom') do			
  		expect(page).to have_selector '#accordion'
  	end
  end

	scenario 'should have an accordion with a description'
		within('#bottom') do			
  		expect(page).to have_selector '#description'
  	end
  end

	scenario 'description should have a title field'
		within('#bottom #description') do			
  		expect(page).to have_selector 'input#property-title[type=text]'
  	end
  end

	scenario 'description should have a text area field'
		within('#bottom #description') do			
  		expect(page).to have_selector 'textarea#property-description'
  	end
  end
end