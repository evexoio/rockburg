# == Schema Information
#
# Table name: venues
#
#  id          :bigint(8)        not null, primary key
#  capacity    :integer
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :venue do
    name      { Faker::FunnyName.name }
    capacity  { rand(250..1000) }
  end
end
