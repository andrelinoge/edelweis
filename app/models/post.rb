# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  translates :title, :content, :meta_keys, :meta_description
end
