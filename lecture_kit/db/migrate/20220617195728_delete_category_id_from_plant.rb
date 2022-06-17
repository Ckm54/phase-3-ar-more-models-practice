class DeleteCategoryIdFromPlant < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :category_id
  end
end
