class AddFaqCategoryId < ActiveRecord::Migration[5.0]
  def change
    add_reference :faqs, :faq_category, index: true
  end
end
