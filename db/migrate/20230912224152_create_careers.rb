class CreateCareers < ActiveRecord::Migration[7.0]
  def change
    create_table :careers do |t|
      t.string :name
      t.string :description
      t.string :skills_required

      t.timestamps
    end
  end
end
