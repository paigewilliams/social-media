class AddRating < ActiveRecord::Migration[5.2]
  def change
    change_column :links, :rating, :integer, default: 1
  end
end
