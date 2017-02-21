# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  cover        :string(255)
#  published_at :date
#

class Post < ApplicationRecord
  mount_uploader :cover, PostCoverUploader
  translates :title, :content, :meta_keys, :meta_description

  validates :title, presence: true
  validates :content, presence: true

  scope :ordered, -> { order(id: :desc) }
end
