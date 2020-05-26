class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :image_url
      t.string :caption
      t.string :date

      t.timestamps
    end
  end
end
