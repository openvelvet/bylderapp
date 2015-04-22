class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |user|
      bitly = Bitly.client
      url = bitly.shorten(url_for(user))
      Rails.logger.debug(url)
      updated = user.update(short_url: url)
      Rails.logger.debug(updated)
    end
  end
end
