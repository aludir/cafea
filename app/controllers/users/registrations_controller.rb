class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      resource.uuid = SecureRandom.hex(n=6)
    end
  end
end
