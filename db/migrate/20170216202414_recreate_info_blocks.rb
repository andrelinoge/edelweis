class RecreateInfoBlocks < ActiveRecord::Migration[5.0]
  def change
    InfoBlock.destroy_all

    InfoBlock.sections.keys.each do |section|
      InfoBlock.create({
        section: section.to_sym,
        title: section,
        content: section
      })
    end
  end
end
