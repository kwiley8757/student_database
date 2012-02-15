class CreateLevels < ActiveRecord::Migration
  def self.up
    create_table :levels do |t|
      t.integer :form_id
      t.string :class

      t.timestamps
    end
  end

  def self.down
    drop_table :levels
  end
end
