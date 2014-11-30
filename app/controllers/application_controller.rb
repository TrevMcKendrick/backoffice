class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    case resource
      when Employee then workspaces_path
    end
  end

  def blog
    redirect_to "http://www.trybackoffice.com/blog#{request.fullpath.gsub('/blog','')}", :status => :moved_permanently
  end

end
