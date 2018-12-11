class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.column :user_id, :integer
      t.column :url, :string
      t.column :rating, :integer

      t.timestamps
    end
  end
end
