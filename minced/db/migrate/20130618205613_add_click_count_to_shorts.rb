class AddClickCountToShorts < ActiveRecord::Migration
  def change
    add_column :shorts, :click_count, :integer
  end
end
