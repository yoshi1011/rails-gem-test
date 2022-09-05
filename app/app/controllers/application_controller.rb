class ApplicationController < ActionController::Base
  include Pundit

  # punditのテストのためにcurrent_userメソッドを適当に作成
  def current_user
    User.first
  end
end
