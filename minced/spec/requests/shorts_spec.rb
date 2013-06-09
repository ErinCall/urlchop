require 'spec_helper'

describe "Shorts" do
  describe "GET /shorts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get shorts_path
      response.status.should be(200)
    end
  end
end
