require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = FactoryGirl.create(:user) }

  describe 'creation' do
    it 'can be created' do
      expect(@user).to be_valid
    end
  end
end
