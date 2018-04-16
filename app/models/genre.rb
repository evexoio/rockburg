# == Schema Information
#
# Table name: genres
#
#  id          :bigint(8)        not null, primary key
#  max_members :integer
#  min_members :integer
#  name        :string
#  style       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Genre < ApplicationRecord
  include ActionView::Helpers::TextHelper
  validates :name, uniqueness: { scope: :style }
  has_many :bands
  has_many :genre_skills
  has_many :skills, through: :genre_skills

  def full_genre
    result = "#{name} - #{style} ("
    result << "#{pluralize(min_members, 'member')}"
    result << ")"
    result
  end
end
