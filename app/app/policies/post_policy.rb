class PostPolicy < ApplicationPolicy
  def create?
    user.first_name.length > 6
  end
end