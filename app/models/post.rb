class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories


  # def categories_attributes=(category_attributes)
  #   category_attributes.values.each do |category_attribute|
  #     category = Category.find_or_create_by(category_attribute)
  #     self.post_categories.build(category: category)
  #   end
  # end

  def categories_attributes=(category_attributes)
    category_attributes.each do |i, category_attribute|
      category = Category.find_or_create_by(category_attribute)
      self.categories << category
    end
  end

end
