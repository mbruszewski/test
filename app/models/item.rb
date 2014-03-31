class Item < ActiveRecord::Base
  has_many :dropdowns
  validates :name, presence: :true, uniqueness: { case_sensitive: :false }
end
