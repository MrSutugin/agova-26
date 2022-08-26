require "test_helper"

class BrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand = brands(:one)
  end

  test "should get index" do
    get brands_url
    assert_response :success
  end

  test "should get new" do
    get new_brand_url
    assert_response :success
  end

  test "should create brand" do
    assert_difference("Brand.count") do
      post brands_url, params: { brand: { account_id: @brand.account_id, address: @brand.address, description: @brand.description, email: @brand.email, geo_lat: @brand.geo_lat, geo_lon: @brand.geo_lon, inn: @brand.inn, name: @brand.name, ogrn: @brand.ogrn, phone: @brand.phone, region_id: @brand.region_id } }
    end

    assert_redirected_to brand_url(Brand.last)
  end

  test "should show brand" do
    get brand_url(@brand)
    assert_response :success
  end

  test "should get edit" do
    get edit_brand_url(@brand)
    assert_response :success
  end

  test "should update brand" do
    patch brand_url(@brand), params: { brand: { account_id: @brand.account_id, address: @brand.address, description: @brand.description, email: @brand.email, geo_lat: @brand.geo_lat, geo_lon: @brand.geo_lon, inn: @brand.inn, name: @brand.name, ogrn: @brand.ogrn, phone: @brand.phone, region_id: @brand.region_id } }
    assert_redirected_to brand_url(@brand)
  end

  test "should destroy brand" do
    assert_difference("Brand.count", -1) do
      delete brand_url(@brand)
    end

    assert_redirected_to brands_url
  end
end
