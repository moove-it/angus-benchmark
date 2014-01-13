require 'json'
require 'sinatra'

require 'lib/business/users'

class SinatraBenchmark < Sinatra::Base

  get '/users' do
    content_type :json

    users_business.all.to_json
  end

  private

  def users_business
    @users_business ||= Business::Users.new
  end

end