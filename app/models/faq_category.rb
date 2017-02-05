# == Schema Information
#
# Table name: faq_categories
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FaqCategory < ApplicationRecord
  translates :title

  has_many :faqs
  validates :title, presence: true
end
