# Patches Redmine's Users
require_dependency 'principal'
require_dependency 'user'

module UserPatch
  def self.included(base) # :nodoc:
    base.extend(ClassMethods)

    base.send(:include, InstanceMethods)

    base.class_eval do
      unloadable
      has_many :skill_levels, dependent: :destroy
      has_many :skills, through: :skill_levels
      has_many :authorizations
      has_many :items, through: :authorizations

    end

  end

  module ClassMethods

  end

  module InstanceMethods

  end
end

ActionDispatch::Callbacks.to_prepare do
  User.send(:include, UserPatch) unless User.included_modules.include? UserPatch
end
