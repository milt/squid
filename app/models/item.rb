class Item < ActiveRecord::Base
  unloadable
  has_many :authorizations
  validates :name, presence: true, uniqueness: true
end
