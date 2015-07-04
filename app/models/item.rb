class Item < ActiveRecord::Base
  belongs_to :user
  default_scope { order('updated_at ASC') }

  validates :name, presence: true
  
end
