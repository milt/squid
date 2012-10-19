class SkillCategory < ActiveRecord::Base
  unloadable
  has_many :skills
  validates :name, presence: true, uniqueness: true
end
