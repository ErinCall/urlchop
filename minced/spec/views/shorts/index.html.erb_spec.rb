require 'spec_helper'

describe "shorts/index" do
  before(:each) do
    assign(:shorts, [
      stub_model(Short,
        :full => "Full"
      ),
      stub_model(Short,
        :full => "Full"
      )
    ])
  end

  it "renders a list of shorts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Full".to_s, :count => 2
  end
end
