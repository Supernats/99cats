class CatRentalRequest < ActiveRecord::Base
  attr_accessible :cat_id, :start_date, :end_date, :status
  validates :cat_id, :start_date, :end_date, :status, :presence => true
  validates :status, :inclusion => %w{PENDING APPROVED DENIED}

  def overlapping_requests
    # CatRentalRequests.where('start_date > ?', )
  end

  def overlapping_approved_requests
  end
end