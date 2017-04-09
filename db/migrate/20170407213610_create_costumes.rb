class CreateCostumes < ActiveRecord::Migration[5.0]
  def change
    create_table :costumes do |t|
      t.string :name
      t.string :detachment

      t.timestamps
    end
  end
end
