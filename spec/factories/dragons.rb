# == Schema Information
#
# Table name: dragons
#
#  id          :bigint           not null, primary key
#  advice      :string(255)      not null
#  affinity    :string(255)      not null
#  explanation :string(255)      not null
#  image       :string(255)      not null
#  name        :string(255)      not null
#  personality :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :dragon do
    sequence(:name, 'dragon_1')
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'public/images/yellowDragon.png'), 'image/png') }
    sequence(:explanation, 'explanation_1')
    sequence(:personality, 'personality_1')
    sequence(:advice, 'advice_1')
    sequence(:affinity, 'affinity_1')
  end

  trait :red do
    id { 1 }
    name { 'レッドドラゴン' }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'public/images/redDragon.png'), 'image/png') }
    explanation { 'アドライグゴッホ' }
    affinity { 'サマエル' }
  end

  trait :yellow do
    id { 2 }
    name { 'イエロードラゴン' }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'public/images/yellowDragon.png'), 'image/png') }
    explanation { 'ファフニール' }
    affinity { 'ファフナー' }
  end
end
