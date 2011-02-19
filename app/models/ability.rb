class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new # Guest user
    if user.role? :admin
      can :manage, :all
    else
      can :read, :all
    end
    if user.role? :native
      can :create, Bid
      can :manage, Photo, :bid => {:user_id => user.id}
      can :update, Bid do |bid|
        bid.try(:user) == user
      end
    end
  end
end
