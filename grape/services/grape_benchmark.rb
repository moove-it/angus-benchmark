require 'entities/user'

require 'lib/business/users'

class GrapeBenchmark < Grape::API
  version 'v1'
  format :json

  helpers do
    def users_business
      @users_business ||= Business::Users.new
    end
  end

  resource :users do
    desc 'Returns the users list.'
    get do
      users = users_business.all
      present :users, users, with: Entities::User
    end
  end

end