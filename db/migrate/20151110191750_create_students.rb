class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :github_username
      t.integer :cohort_id
      t.timestamps null: false
    end
  end
end
