class SkillCategory < ActiveRecord::Base
  unloadable
  has_many :skills
end
