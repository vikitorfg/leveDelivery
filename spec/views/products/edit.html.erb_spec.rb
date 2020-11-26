require 'rails_helper'

RSpec.describe 'products/edit', type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
                                  title: 'MyString',
                                  description: 'MyText',
                                  image_url: 'https://levedelivery.com.br/wp-content/uploads/2020/06/picanha-suina.jpg',
                                  price: '9.99',
                                  calories: 10,
                                  protein: 10,
                                  carbohidrates: 10,
                                  fibers: 10,
                                  total_fat: 10,
                                  sat_fat: 10,
                                  sodium: 10
                                ))
  end

  it 'renders the edit product form' do
    render

    assert_select 'form[action=?][method=?]', product_path(@product), 'post' do
      assert_select 'input[name=?]', 'product[title]'

      assert_select 'textarea[name=?]', 'product[description]'

      assert_select 'input[name=?]', 'product[image_url]'

      assert_select 'input[name=?]', 'product[price]'
    end
  end
end
