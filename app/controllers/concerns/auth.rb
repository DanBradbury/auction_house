module Auth
  extend ActiveSupport::Concern
  included do
    before_action :ensure_logged_in
    helper_method :signed_in?
  end

  class_methods do
    def allow_no_auth(**options)
      skip_before_action :ensure_logged_in, **options
    end
  end

  private
  def ensure_logged_in
    if Current.user.present? or user = User.find_by(id: cookies.encrypted[:user_id])
      Current.user = user
    else
      redirect_to root_url
    end
  end

  def signed_in?
    Current.user.present?
  end
end
