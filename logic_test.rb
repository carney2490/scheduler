require "minitest/autorun"
require_relative "logic.rb"


class TestLogic < Minitest::Test

    def test_can_work_true
        availablity = true
        assert_equal(true, available(availablity))
    end
    def test_can_work_false
        availablity = false
        assert_equal(false, available(availablity))
    end
    def test_already_working_this_week_makes_availability_false
        working = true
        worked_last_week = true
        assert_equal(false, already_on_schedule(working, worked_last_week))
    end
    def test_already_working_this_week_makes_availability_false_1
        working = true
        worked_last_week = false
        assert_equal(false, already_on_schedule(working, worked_last_week))
    end
    def test_already_not_working_this_week_makes_availability_false
        working = false
        worked_last_week = true
        assert_equal(true, already_on_schedule(working, worked_last_week))
    end
    def test_already_not_working_this_week_makes_availability_false_1
        working = false
        worked_last_week = false
        assert_equal(true, already_on_schedule(working, worked_last_week))
    end
    def test_worked_last_week_returns_true
        worked_last_week = true
        assert_equal(true, worked_last_week(worked_last_week))
    end
end