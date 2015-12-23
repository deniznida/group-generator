class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :group_type_id
      t.string :code
      t.timestamps null: false
    end
  end
end
