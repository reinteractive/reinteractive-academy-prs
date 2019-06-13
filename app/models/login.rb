class login
  attr_accessor :username, :password

  def same?(password_to_compare)
    password == password_to_compare
  end
end
