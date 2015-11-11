class Recipe < ActiveRecord::Base
  attr_accessor :title, :ingredients, :chef, :directions
  
  def title_in_caps
    title.upcase
  end
end



# class Dog
#   def bark
#     "woof"
#   end

#   def bark_twice
#     bark * 2
#   end
# end