class CreateCostumeDetachments < ActiveRecord::Migration[5.0]
  def change
    create_table :costume_detachments do |t|
      t.references :costume
      t.references :detachment

      t.timestamps
    end
  end
end
