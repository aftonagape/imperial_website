class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :display_name
      t.boolean :create_users, default: false
      t.boolean :view_users, default: false
      t.boolean :edit_users, default: false
      t.boolean :delete_users, default: false
      t.boolean :create_events, default: false
      t.boolean :view_events, default: false
      t.boolean :edit_events, default: false
      t.boolean :delete_events, default: false
      t.boolean :create_costumes, default: false
      t.boolean :view_costumes, default: false
      t.boolean :edit_costumes, default: false
      t.boolean :delete_costumes, default: false
      t.boolean :create_detachments, default: false
      t.boolean :view_detachments, default: false
      t.boolean :edit_detachments, default: false
      t.boolean :delete_detachments, default: false
      t.boolean :create_members, default: false
      t.boolean :view_members, default: false
      t.boolean :edit_members, default: false
      t.boolean :delete_members, default: false
    end
  end
end
