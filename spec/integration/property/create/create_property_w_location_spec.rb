require 'spec_helper'

describe Property do
  include Navigation::Helpers

  describe 'Create' do
    it 'should create valid property with only location set' do
      expect(create :property, location: 'Copenhagen').to be_valid
    end

    context 'New property page' do
      before :each do
        go_to 'new property page'
      end

      describe 'Display' do
        it 'should display edit location form' do
          page.content matches 'your location'
        end

        it 'should display location notice' do
          page.content matches 'Notice: Please note that'
        end      
      end

      describe 'Fill-out form' do
        context 'Valid location' do
          before :each do
            fill_out 'location', with: 'griffenfeldsgade 12, Copenhagen'
            click_button 'save'
          end

          it 'should save' do
            expect(property.location).to eq 'griffenfeldsgade 12, Copenhagen'
          end

          it 'should calculate and update with geo-coordinates' do
            expect(property.position).to_not be_nil
            expect(property.longitude).to_not be_nil
            expect(property.latitude).to_not be_nil
          end
        end

        context 'Invalid location'
          before :each do
            fill_out 'location', with: 'blip blap blup, Copenhagen'
            click_button 'save'
          end

          it 'should NOT save' do
            expect(property).to_not be_valid
            expect(property.location).to be_nil
          end

          it 'should NOT calculate and update with geo-coordinates' do
            expect(property.position).to be_nil
            expect(property.longitude).to be_nil
            expect(property.latitude).to be_nil            
          end
        end
      end
    end
  end
end