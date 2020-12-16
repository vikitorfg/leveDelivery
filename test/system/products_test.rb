require 'application_system_test_case'

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test 'visiting the index' do
    visit products_url
    assert_selector 'h1', text: 'Products'
  end

  test 'creating a Product' do
    visit products_url
    click_on 'New Product'

    fill_in 'Description', with: @product.description
    fill_in 'Image url', with: @product.image_url
    fill_in 'Price', with: @product.price
    fill_in 'Title', with: 'title is unique 312321'
    fill_in 'Calories', with: 1
    fill_in 'Protein', with: 1
    fill_in 'Carbohidrates', with: 1
    fill_in 'Fibers', with: 1
    fill_in 'Total fat', with: 1
    fill_in 'Sat fat', with: 1
    fill_in 'Sodium', with: 1
    check 'product_content_list_980190962'
    click_on 'Create Product'

    assert_text 'MyString'
    assert_text 'Product was successfully created'
    click_on 'Back'
  end

  test 'updating a Product' do
    visit products_url
    click_on 'Edit', match: :first

    fill_in 'Description', with: @product.description
    fill_in 'Image url', with: @product.image_url
    fill_in 'Price', with: @product.price
    fill_in 'Title', with: @product.title

    assert page.has_checked_field?('product_content_list_980190962')

    check 'product_content_list_298486374'
    click_on 'Update Product'

    assert_text 'MyString2'
    assert_text 'Product was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Product' do
    visit products_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Product was successfully destroyed'
  end
end
