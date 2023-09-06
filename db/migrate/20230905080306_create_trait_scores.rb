class CreateTraitScores < ActiveRecord::Migration[7.0]
  def change
    create_table :trait_scores do |t|
      t.string :score
      t.references :user, null: false, foreign_key: true
      t.references :personality_trait, null: false, foreign_key: true

      t.timestamps
    end
  end
end
