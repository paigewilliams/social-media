class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.column :user_id, :integer
      t.column :link_id, :integer
      t.column :text, :string

      t.timestamps
    end
  end
end
