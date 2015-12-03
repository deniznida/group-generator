class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :name
      t.attachment :roster_csv
      t.timestamps null: false
    end
  end
end
