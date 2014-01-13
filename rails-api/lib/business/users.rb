USERS = {
  1 => User.new(1, 'John', '123john'),
  2 => User.new(2, 'Doe', '123doe')
}

module Business
  class Users

    def all
      USERS.values
    end

  end
end