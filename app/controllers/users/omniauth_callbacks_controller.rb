class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  before_filter :reset_session

  private
  def reset_session
    session["devise.twitter_data"]  = nil
    session["devise.github_data"] = nil
    session["devise.google_data"] = nil
    session["devise.facebook_data"] = nil
  end
end