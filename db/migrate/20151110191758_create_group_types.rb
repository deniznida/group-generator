class CreateGroupTypes < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :type
      t.timestamps null: false
    end
  end
end
