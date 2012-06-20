class History < ActiveRecord::Base
  attr_accessible :owner, :previous_state, :state
  belongs_to :article
end
