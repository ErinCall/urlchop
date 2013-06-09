require 'spec_helper'

describe "shorts/new" do
  before(:each) do
    assign(:short, stub_model(Short,
      :full => "MyString"
    ).as_new_record)
  end

  it "renders new short form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shorts_path, "post" do
      assert_select "input#short_full[name=?]", "short[full]"
    end
  end
end
