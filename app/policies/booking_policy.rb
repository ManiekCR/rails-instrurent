class BookingPolicy < ApplicationPolicy
  def create?
    true
  end

  def destroy?
    false
  end

  def update?
    user == record.instrument.user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
