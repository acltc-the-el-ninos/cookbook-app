class Recipe < ActiveRecord::Base
  def title_in_caps
    title.upcase
  end

  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(". ")
  end

  def readable_created_at
    created_at.strftime("%B %e, %Y")
  end
end