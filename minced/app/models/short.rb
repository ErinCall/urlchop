class Short < ActiveRecord::Base
  before_create :default_value	
  
  attr_accessible :full, :click_count

  private
  def default_value
    if self.click_count == nil
    	self.click_count = 0
    end
  end

end
