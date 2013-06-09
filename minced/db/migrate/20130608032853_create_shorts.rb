class CreateShorts < ActiveRecord::Migration
  def change
    create_table :shorts do |t|
      t.string :full

      t.timestamps
    end
  end
end
