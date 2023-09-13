class CreateTraitWeights < ActiveRecord::Migration[7.0]
  def change
    create_table :trait_weights do |t|
      t.references :career, null: false, foreign_key: true
      t.string :Trait1_weight
      t.string :Trait2_weight
      t.string :Trait3_weight
      t.string :Trait4_weight
      t.string :Trait5_weight
      t.string :Trait6_weight

      t.timestamps
    end
  end
end
