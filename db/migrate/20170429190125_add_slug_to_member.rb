class AddSlugToMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :slug, :string
  end
end
