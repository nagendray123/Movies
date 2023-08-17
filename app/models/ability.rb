# frozen_string_literal: true

class Ability
  include CanCan::Ability
  attr_reader :user, :booking


  def initialize(user)
    user ||= User.new
    can :read, Booking, user_id: user.id

    if user.has_role? (:admin) 
      can :manage, :all

    else 
      can :read ,Movie
      can :read, Theater
    end
  end
end
