require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = FactoryGirl.create(:user) }

  describe 'creation' do
    it 'can be created' do
      expect(@user).to be_valid
    end
  end

  describe 'relationship between user and body measure' do
    it 'allows for users to be associated with multiple body measures' do
      second_user = FactoryGirl.create(:second_user)
      BodyMeasure.create!(height: 1.7, weight: 70, user_id: second_user.id)
      BodyMeasure.create!(height: 1.8, weight: 80, user_id: second_user.id)

      expect(second_user.body_measures.count).to eq(2)
    end
  end
end
