require 'rails_helper'

RSpec.describe 'products/show', type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
                                  title: 'Title',
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

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
  end
end
