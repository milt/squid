class Skill < ActiveRecord::Base
  unloadable
  belongs_to :skill_category
  has_many :skill_levels
  has_many :users, :through => :skill_levels
end
