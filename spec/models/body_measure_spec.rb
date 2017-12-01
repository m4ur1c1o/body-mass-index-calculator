require 'rails_helper'

RSpec.describe BodyMeasure, type: :model do
  describe 'Creation' do
    before do
      @body_measure = FactoryGirl.create(:body_measure)
    end

    it 'can be created' do
      expect(@body_measure).to be_valid
    end
  end
end
