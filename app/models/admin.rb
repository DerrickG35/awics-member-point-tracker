# frozen_string_literal: true

# defines how an admin class is created for the most recent new login to the site
class Admin < ApplicationRecord
  devise :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_google(email:, full_name:, uid:, avatar_url:)
    # userExists = false
    # @users = User.all
    # @users.each do |user|
    #  if user.email == email
    #    userExists = true
    #    break
    #  end
    #  if userExists == false
    #    return nil
    #  end
    # end

    return nil unless email =~ /@tamu.edu\z/

    create_with(uid: uid, full_name: full_name, avatar_url: avatar_url).find_or_create_by!(email: email)
  end
end
