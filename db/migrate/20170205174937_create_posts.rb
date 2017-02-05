class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :meta_keys
      t.text :meta_description

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Post.create_translation_table! title: :string, content: :text, meta_keys: :text, meta_description: :text
      end

      dir.down do 
        Post.drop_translation_table!
      end
    end
  end
end
