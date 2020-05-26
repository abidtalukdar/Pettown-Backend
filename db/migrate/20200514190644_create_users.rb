class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :bio
      t.string :profile_picture
      t.string :location

      t.timestamps
    end
  end
end
