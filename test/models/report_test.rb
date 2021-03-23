require "test_helper"

class ReportTest < ActiveSupport::TestCase
  test 'report is no created with empty description' do
    report = Report.new
    assert_not article.save
  end
end
