class CreateFaqCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :faq_categories do |t|
      t.string :title

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        FaqCategory.create_translation_table! title: :string
      end

      dir.down do 
        FaqCategory.drop_translation_table!
      end
    end
  end
end
