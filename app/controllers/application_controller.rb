class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :birthday])
  end

  def after_sign_in_path_for(resource)
    @questions = Question.all
    if resource.name.present?
      user_path(resource.id)
    else
      question_path(@questions.first)
    end
  end

  def after_sign_out_path_for(resource)
    root_path # ログアウト後に遷移するpathを設定
  end
end
