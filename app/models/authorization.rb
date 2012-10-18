class Authorization < ActiveRecord::Base
  unloadable
  belongs_to :item
  belongs_to :user
end
