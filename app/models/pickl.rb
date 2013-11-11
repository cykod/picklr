class Pickl < ActiveRecord::Base

  validates :body, length: { minimum: 1, maximum: 150  }


end
