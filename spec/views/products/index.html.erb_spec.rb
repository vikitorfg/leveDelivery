require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        title: "Title",
        description: "MyText",
        image_url: "Image Url",
        price: "9.99",
        calories: 10,
        protein: 10,
        carbohidrates: 10,
        fibers: 10,
        total_fat: 10,
        sat_fat: 10,
        sodium: 10
      ),
      Product.create!(
        title: "Title",
        description: "MyText",
        image_url: "Image Url",
        price: "9.99",
        calories: 10,
        protein: 10,
        carbohidrates: 10,
        fibers: 10,
        total_fat: 10,
        sat_fat: 10,
        sodium: 10
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Image Url".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
