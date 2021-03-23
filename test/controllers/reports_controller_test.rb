require "test_helper"

class ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    self.use_instantiated_fixtures = true
    @report = reports(:one)
  end

  test 'should create report' do 
    assert_difference('Report.count') do
      post reports_url, params: { report: { symptoms: @report.symptoms, user_id: @report.user_id } }
    end

    assert_redirected_to report_url(Report.last)
  end

  test 'should get new' do 
    get new_report_url
    assert_response :success
  end  

  test 'should show report' do
    get report_url(@report)
    assert_response :success
  end
end
