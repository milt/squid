class SkillLevel < ActiveRecord::Base
  unloadable
  belongs_to :skill
  belongs_to :user
  validates :skill, presence: true
  validates :user, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 4 }
end
