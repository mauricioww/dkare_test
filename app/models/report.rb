class Report < ApplicationRecord
  belongs_to :user

  # Rich text field to have a better user experience in the report description
  has_rich_text :symptomps

  # The symptomps is a must to include in the report
  validates :symptomps, presence: true
end
