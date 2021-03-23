require 'application_system_test_case'

class AppointmentsTest < ApplicationSystemTestCase
    setup do
        self.use_instantiated_fixtures = true
        @report = reports(:one)
    end
end