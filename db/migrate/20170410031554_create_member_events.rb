class CreateMemberEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :member_events do |t|
      t.references :event, foreign_key: true
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
