class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :github_username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :provider
      t.string :uid
      t.string :image
      t.string :access_token
      t.string :admin, default: false
      
      t.timestamps null: false
    end
  end
end
