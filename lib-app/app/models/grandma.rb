class Grandma < ApplicationRecord
  has_secure_password

    def self.confirm(params)
    @grandma = Grandma.find_by({email: params[:email]})
    @grandma ? @grandma.authenticate(params[:password]) : false
  end

end
