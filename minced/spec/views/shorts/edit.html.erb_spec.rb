require 'spec_helper'

describe "shorts/edit" do
  before(:each) do
    @short = assign(:short, stub_model(Short,
      :full => "MyString"
    ))
  end

  it "renders the edit short form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", short_path(@short), "post" do
      assert_select "input#short_full[name=?]", "short[full]"
    end
  end
end
