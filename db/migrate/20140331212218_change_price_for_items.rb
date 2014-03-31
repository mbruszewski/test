class ChangePriceForItems < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.change :price, :decimal
    end
  end

end
