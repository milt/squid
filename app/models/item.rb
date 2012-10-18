class Item < ActiveRecord::Base
  unloadable
  has_many :authorizations
end
