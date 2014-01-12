class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.belongs_to :classroom
      t.string :name

      t.timestamps
    end
  end
end
