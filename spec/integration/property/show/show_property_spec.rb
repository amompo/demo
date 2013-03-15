require 'spec_helper'

describe Property do
  subject { property }

  let(:property) { create :property }

  describe 'Show' do
    before do
      go_to 'property page'
    end

    context 'Details' do
      subject       { details }
      let(:details) { property.details }

      context 'Costs' do
        # costs are embedded in details
        subject       { costs }
        let(:costs)   { details.costs }

        it 'shows cost less than 500' do
          expect(subject).to be < 500
        end
      end
    end
  end
end
