require 'test_helper'

class ActorTest < ActiveSupport::TestCase

  def setup
    @actor = actors(:one)
  end

  test "valid actor" do
    assert @actor.valid?
  end

  test "invalid without first_name" do
    @actor.first_name = nil
    refute @actor.valid?, "saved user without a  first name"
    assert_not_nil @actor.errors[:first_name], "no validation error for first name present"
  end

  test "invalid without last name" do
    @actor.last_name = nil
    refute @actor.valid?,"saved user without a  last name"
    assert_not_nil @actor.errors[:last_name], "no validation error for last name present"
  end

end
