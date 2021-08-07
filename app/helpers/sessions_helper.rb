module SessionsHelper

  # 渡されたユーザーでサインインする
  def sign_in(user)
    session[:user_id] = user.id
  end
      
  # 現在のユーザーをサインアウトする
  def sign_out
    session.delete(:user_id)
    @current_user = nil
  end
end
