class CreateMemberCostumes < ActiveRecord::Migration[5.0]
  def change
    create_table :member_costumes do |t|
      t.references :costume, foreign_key: true
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
