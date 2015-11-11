class Recipe < ActiveRecord::Base
  def title_in_caps
    title.upcase
  end
end