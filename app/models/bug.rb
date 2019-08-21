class Bug < ApplicationRecord


  def self.sort_order(title=nil, description=nil)
    binding.pry
    if title.present?
      where("bugs.title = ?", title)
    elsif description.present?
      where("bugs.description = ?", description)
    end

  end
end
