class RenamePersonColumnToKelas < ActiveRecord::Migration
  def self.up
    rename_column :students, :person, :kelas
  end

  def self.down
    rename_column  :students, :kelas, :person
  end
end
