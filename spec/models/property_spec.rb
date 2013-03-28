require 'spec_helper'

describe Property::Location do
  subject { property }

  let(:property)  { create :valid_property, street: street, city: city }
  let(:street)    { 'Griffenfeldsgade 11b' }
  let(:country)   { 'Denmark' }
  let(:city)      { 'Copenhagen' }

  # http://www.infoplease.com/ipa/A0001769.html
  # Latitude and Longitude of World Cities
  # Copenhagen, Denmark, 55, 40 N, 12, 34 E
  let(:latitude)  { 55.688568 }
  let(:longitude) { 12.5549331 }

  describe 'location' do
    it 'should set latitude' do
      expect(subject.latitude).to be_within(0.5).of latitude
    end

    it 'should set longitude' do
      expect(subject.longitude).to be_within(0.5).of longitude
    end
  end
end