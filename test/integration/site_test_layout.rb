require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2 #checks to see if there are two links (logo, home button)
    assert_select "a[href=?]", help_path #tests for presence of this path in a link on the page
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end
end