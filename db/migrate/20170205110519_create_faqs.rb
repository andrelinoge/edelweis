class CreateFaqs < ActiveRecord::Migration[5.0]
  def change
    create_table :faqs do |t|
      t.string :title
      t.text :content

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Faq.create_translation_table! :title => :string, :content => :text
      end

      dir.down do 
        Faq.drop_translation_table!
      end
    end
  end
end
