# == Schema Information
#
# Table name: info_blocks
#
#  id         :integer          not null, primary key
#  section    :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InfoBlock < ApplicationRecord
  enum section: [ :about, :sales, :technologies, :investment ]

  mount_uploader :image, ImageUploader
  translates :title, :content

  def self.[](section)
    self.where(section: section).first
  end
end
