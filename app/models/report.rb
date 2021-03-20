class Report < ApplicationRecord
  belongs_to :user

  # The symptomps is a must to include in the report
  validates :symptomps, presence: true
end
