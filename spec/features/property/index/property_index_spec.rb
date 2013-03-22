require 'spec_helper'

feature 'list properties' do
	background do
		@properties = Properties.all
	end

	scenario 'default list' do
		within('#list') do
			expect(page).to have_content 'Properties'
		end
	end

	scenario 'Property just addded' do
		background do
			# create :valid_property, title: title
		end

		given(:title) { 'The added property' }

		within('#list') do
			expect(page).to have_content title
		end
	end

	scenario 'Property just deleted' do
		background do
			create :valid_property, title: title

			Properties.where(title: title).first.delete
		end

		given(:title) { 'The deleted property' }

		within('#list') do
			expect(page).to_not have_content title
		end
	end
end