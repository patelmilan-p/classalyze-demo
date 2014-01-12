class CreateTestsTakens < ActiveRecord::Migration
  def change
    create_table :tests_takens do |t|
      t.references :student, index: true
      t.references :test, index: true
      t.integer :score

      t.timestamps
    end
  end
end
