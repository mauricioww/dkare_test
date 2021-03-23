require 'application_system_test_case'

class ReportsTest < ApplicationSystemTestCase
    setup do
        self.use_instantiated_fixtures = true
        @report = reports(:one)
    end
end