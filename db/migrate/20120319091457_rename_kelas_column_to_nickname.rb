class RenameKelasColumnToNickname < ActiveRecord::Migration
  def self.up
    rename_column :students, :kelas, :nickname
  end

  def self.down
    rename_column :students, :nickname, :kelas
  end
end
