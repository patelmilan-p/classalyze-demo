class RemoveScoreFromTest < ActiveRecord::Migration
  def change
    remove_column :tests, :score, :integer
  end
end
