class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.where(user: user)
      scope.all
    end
  end
  def show?
    true
  end
  def create?
    false
  end
  def update?
    record.user == user
  end
  def destroy?
    record.user == user
  end
end
