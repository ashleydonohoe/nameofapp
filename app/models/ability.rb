class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    if user.admin?
    	can :destroy, Comment
    else
    	can :read, Comment
    end
  end
end
