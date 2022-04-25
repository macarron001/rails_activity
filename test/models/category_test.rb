require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'should not save a Category without a title' do
    category = Category.new
    category.description = 'RTX HEHE'

    assert_not category.save, "Saved the category without title"
  end
end