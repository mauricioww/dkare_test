require "test_helper"

class AppointmentsControllerTest < ActionDispatch::IntegrationTest

  setup do 
    self.use_instantiated_fixtures = true
    # @appointment = appointments(:one)
    @appointment = Appointment.new(user_id: 1, time: '2021-03-19 21:40:36', doctor_id: 0)
  end

  test 'should get new' do 
    get new_appointment_url
    assert_response :success
  end

  test 'should show appointment' do 
    get appointments_url(@appointment)
    assert_response :success
  end

  test 'should create appointment' do
    assert_difference('Appointment.count') do
      post appointments_path, params: { appointment: { time: @appointment.time, user_id: @appointment.user_id, doctor_id: @appointment.doctor_id } }
    end

    assert_redirected_to appointment_url(Appointment.last)
  end
  
end
