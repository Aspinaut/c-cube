class ApplicationController < ActionController::Base

  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?

    #if (request.env["HTTP_ACCEPT_LANGUAGE"])[0..1].include?("fr")
    #  params[:locale] = "fr"
    #elsif (request.env["HTTP_ACCEPT_LANGUAGE"])[0..1].include?("nl")
    #  params[:locale] = "nl"
    #else
    #  params[:locale] = "en"
    #end
  end


  def default_url_options(options = {})
    { locale: I18n.locale }
  end
end
