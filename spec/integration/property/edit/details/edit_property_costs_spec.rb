require 'spec_helper'

describe Property do
  subject        { property }
  let(:property) { create :property, value: 'high'  }

  include Navigation::Helpers

  describe 'Edit' do
    before do
      go_to 'edit property page'
    end

    context 'Details' do
      subject       { details }
      let(:details) { property.details }

      context 'Costs' do
        # costs are embedded in details
        subject       { costs }
        let(:costs)   { details.costs }

        it 'shows dropdown when costs box is clicked' do
          click_link "costs"
          # expect to see 6000, 7000 in the dropdown
          page.content contains :cost_dropdown, values: [ '6000', '7000']
        end

        describe 'selecting new value updates property' do
          context '6000 is selected' do          
            before :each do
              select value: 6000
            end

            it 'updates the cost value on the screen' do
              page.content contains :cost, 6000
            end
              
            it 'calculates and updates the new total_rent for the property' do
              property.costs.total_rent.should == 6000
            end
          end
        end
      end
    end
  end
end