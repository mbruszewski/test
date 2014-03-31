class Variant < ActiveRecord::Base
  belongs_to :dropdown
  validates :name, presence: :true
  validates :dropdown_id, presence: :true
end
