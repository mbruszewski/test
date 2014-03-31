class Dropdown < ActiveRecord::Base
  belongs_to :item
  has_many :variants
  validates :name, presence: :true
  validates :item_id, presence: :true
end
