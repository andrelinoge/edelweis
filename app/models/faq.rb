# == Schema Information
#
# Table name: faqs
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  faq_category_id :integer
#

class Faq < ApplicationRecord
  translates :title, :content

  belongs_to :faq_category

  validates :faq_category, presence: true
  validates :title, presence: true
  validates :content, presence: true

  scope :ordered, -> { order(id: :desc) }
end
