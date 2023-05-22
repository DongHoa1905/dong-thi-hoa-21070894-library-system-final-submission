require "application_system_test_case"

class BooksOrdersTest < ApplicationSystemTestCase
  setup do
    @books_order = books_orders(:one)
  end

  test "visiting the index" do
    visit books_orders_url
    assert_selector "h1", text: "Books orders"
  end

  test "should create books order" do
    visit books_orders_url
    click_on "New books order"

    fill_in "Book", with: @books_order.book_id
    fill_in "Order", with: @books_order.order_id
    click_on "Create Books order"

    assert_text "Books order was successfully created"
    click_on "Back"
  end

  test "should update Books order" do
    visit books_order_url(@books_order)
    click_on "Edit this books order", match: :first

    fill_in "Book", with: @books_order.book_id
    fill_in "Order", with: @books_order.order_id
    click_on "Update Books order"

    assert_text "Books order was successfully updated"
    click_on "Back"
  end

  test "should destroy Books order" do
    visit books_order_url(@books_order)
    click_on "Destroy this books order", match: :first

    assert_text "Books order was successfully destroyed"
  end
end
