class CreateInfoBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :info_blocks do |t|
      t.integer :section
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        InfoBlock.create_translation_table! title: :string, content: :text
      end

      dir.down do 
        InfoBlock.drop_translation_table!
      end
    end
  end
end
