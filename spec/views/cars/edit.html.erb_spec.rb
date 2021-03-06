require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :make => "MyString",
      :model => "MyString",
      :year => 1,
      :color => "MyString",
      :nickname => "MyString",
      :license_plate_number => "MyString",
      :longitude => 1.5,
      :latitude => 1.5,
      :user => ""
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "input#car_make[name=?]", "car[make]"

      assert_select "input#car_model[name=?]", "car[model]"

      assert_select "input#car_year[name=?]", "car[year]"

      assert_select "input#car_color[name=?]", "car[color]"

      assert_select "input#car_nickname[name=?]", "car[nickname]"

      assert_select "input#car_license_plate_number[name=?]", "car[license_plate_number]"

      assert_select "input#car_longitude[name=?]", "car[longitude]"

      assert_select "input#car_latitude[name=?]", "car[latitude]"

      assert_select "input#car_user[name=?]", "car[user]"
    end
  end
end
