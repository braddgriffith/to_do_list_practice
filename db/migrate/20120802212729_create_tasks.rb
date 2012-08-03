class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :list_id
      t.string :name
      t.string :details
      t.boolean :completed
      
      t.timestamps
    end
  end
end
