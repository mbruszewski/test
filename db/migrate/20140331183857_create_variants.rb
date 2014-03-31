class CreateVariants < ActiveRecord::Migration
  def self.up
    create_table :variants do |t|
      t.string :name
      t.integer :dropdown_id
      t.timestamps
    end
  end

  def self.down
    drop_table :variants
  end
end
