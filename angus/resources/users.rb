require 'lib/business/users'

class Users < Angus::BaseResource

  def get_users
    { :users => users_business.all }
  end

  private

  def users_business
    @users_business ||= Business::Users.new
  end

end