require 'spec_helper'

describe "shorts/show" do
  before(:each) do
    @short = assign(:short, stub_model(Short,
      :full => "Full"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Full/)
  end
end
