require 'rails_helper'

RSpec.describe "staffs/edit", :type => :view do
  before(:each) do
    @staff = assign(:staff, Staff.create!(
      :email => "MyString",
      :name => "MyString",
      :rate => "9.99",
      :created_by => 1,
      :updated_by => 1
    ))
  end

  it "renders the edit staff form" do
    render

    assert_select "form[action=?][method=?]", staff_path(@staff), "post" do

      assert_select "input#staff_email[name=?]", "staff[email]"

      assert_select "input#staff_name[name=?]", "staff[name]"

      assert_select "input#staff_rate[name=?]", "staff[rate]"

      assert_select "input#staff_created_by[name=?]", "staff[created_by]"

      assert_select "input#staff_updated_by[name=?]", "staff[updated_by]"
    end
  end
end
