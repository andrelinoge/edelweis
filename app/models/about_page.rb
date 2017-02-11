# == Schema Information
#
# Table name: about_pages
#
#  id         :integer          not null, primary key
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AboutPage < ApplicationRecord
  mount_uploader :image, ImageUploader
  translates :title, :content, :image_description
end
