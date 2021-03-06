require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  describe 'test_data_validation' do
    it 'test_data_is_valid' do
      expect(user).to be_valid
    end
  end

  describe 'associations' do
    it 'has_one :authentications, destroy' do
      is_expected.to have_one(:authentication).dependent(:destroy)
    end

    it 'has_many :results' do
      is_expected.to have_many(:results)
    end
  end

  describe 'validations' do
    before { create(:user) }

    it 'twitter_id: presence' do
      is_expected.to validate_presence_of(:twitter_id)
    end

    it 'twitter_id: uniqueness' do
      is_expected.to validate_uniqueness_of(:twitter_id).case_insensitive
    end

    it 'screen_name: presence' do
      is_expected.to validate_presence_of(:screen_name)
    end

    it 'name: presence' do
      is_expected.to validate_presence_of(:name)
    end

    it 'name: length < 50' do
      is_expected.to validate_length_of(:name).is_at_most(50)
    end

    it 'role: presence' do
      is_expected.to validate_presence_of(:role)
    end
  end
end
