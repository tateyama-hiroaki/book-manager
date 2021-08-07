module SessionsHelper

  # 渡されたユーザーでサインインする
  def sign_in(user)
    session[:user_id] = user.id
  end

  # 現在サインイン中のユーザーを返す
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  # 現在のユーザーをサインアウトする
  def sign_out
    session.delete(:user_id)
    @current_user = nil
  end
end
