class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :about_me
      t.references :user, null: false, foreign_key: true
      t.string :photo
      t.string :string

      t.timestamps
    end
  end
end
