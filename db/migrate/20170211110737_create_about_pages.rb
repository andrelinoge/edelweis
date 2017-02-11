class CreateAboutPages < ActiveRecord::Migration[5.0]
  def change
    create_table :about_pages do |t|
      t.string :title
      t.text :content
      t.string :image
      t.string :image_description

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        AboutPage.create_translation_table! title: :string, content: :text, image_description: :string
      end

      dir.down do 
        AboutPage.drop_translation_table!
      end
    end
  end
end
