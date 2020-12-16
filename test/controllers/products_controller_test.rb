require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:three)
  end

  test 'should get index' do
    get products_url
    assert_response :success
  end

  test 'should get new' do
    get new_product_url
    assert_response :success
  end

  test 'should create product' do
    assert_difference('Product.count') do
      post products_url, params: { product: { description: @product.description, image_url: @product.image_url,
                                              price: @product.price, title: 'a new different title', calories: 1, protein: 1,
                                              carbohidrates: 1, fibers: 1, total_fat: 1, sat_fat: 1, sodium: 1 } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test 'should show product' do
    get product_url(@product)
    assert_response :success
  end

  test 'should get edit' do
    get edit_product_url(@product)
    assert_response :success
  end

  test 'should update product' do
    patch product_url(@product), params: { product: { description: @product.description, image_url: @product.image_url,
                                                      price: @product.price, title: 'a new different title2', calories: 1, protein: 1,
                                                      carbohidrates: 1, fibers: 1, total_fat: 1, sat_fat: 1, sodium: 1 } }
    assert_redirected_to product_url(@product)
  end

  test 'should destroy product' do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
