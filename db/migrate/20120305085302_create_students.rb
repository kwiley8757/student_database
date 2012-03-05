class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :name
      t.string :kelas
      t.string :food
      t.string :person
      t.string :notes
      t.integer :skill_id

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
