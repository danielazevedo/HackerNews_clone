class Vote < ActiveRecord::Base
	self.inheritance_column = nil
	belongs_to :user
        belongs_to :article
end
