class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private

    # Potwierdzenie zalogowania uzytkownika
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Prosze o zalogowanie"
        redirect_to login_url
      end
    end
end