# == Schema Information
#
# Table name: faqs
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Faq < ApplicationRecord
  translates :title, :content
end
