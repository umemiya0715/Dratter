# == Schema Information
#
# Table name: authentications
#
#  id                  :bigint           not null, primary key
#  access_token        :string(255)      default(""), not null
#  access_token_secret :string(255)      default(""), not null
#  provider            :string(255)      not null
#  uid                 :string(255)      not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer          not null
#
# Indexes
#
#  index_authentications_on_provider_and_uid  (provider,uid)
#
FactoryBot.define do
  factory :authentication do
    sequence(:uid, 'uid_1')
    provider { 'twitter' }
    association :user
  end
end
