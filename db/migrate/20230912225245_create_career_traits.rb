class CreateCareerTraits < ActiveRecord::Migration[7.0]
  def change
    create_table :career_traits do |t|
      t.references :career, null: false, foreign_key: true
      t.references :personality_trait, null: false, foreign_key: true

      t.timestamps
    end
  end
end
