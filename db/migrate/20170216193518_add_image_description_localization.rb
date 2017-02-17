class AddImageDescriptionLocalization < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        InfoBlock.add_translation_fields! image_description: :string
      end

      dir.down do 
        remove_column :info_block_translations, :author
      end
    end
  end
end
