class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user

    if user.admin?
      can :manage, :all
    elsif user.tutor?
      can :create, AAnimal
      can :read, AAnimal, user_id: user.id
      can :create, AEventosAnimal
      can :read, AEventosAnimal, user_id: user.id
    end
  end
end
