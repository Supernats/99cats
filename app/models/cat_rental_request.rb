class CatRentalRequest < ActiveRecord::Base
  attr_accessible :cat_id, :start_date, :end_date


end