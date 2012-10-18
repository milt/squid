class SkillLevel < ActiveRecord::Base
  unloadable
  belongs_to :skill
  belongs_to :user
end
