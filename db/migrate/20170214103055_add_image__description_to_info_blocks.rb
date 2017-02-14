class AddImageDescriptionToInfoBlocks < ActiveRecord::Migration[5.0]
  def change
    add_column :info_blocks, :image_description, :string
  end
end
