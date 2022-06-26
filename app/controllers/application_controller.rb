class ApplicationController < ActionController::Base
   # ログインしていないユーザーにログインを促すbefore_action
  # 「新規登録画面」と「ログイン」ではもちろんまだ未ログイン状態のため、このbefore_actionはskipさせる
  # 未ログイン状態であってもURLの直打ち等でユーザー専用の編集画面などにアクセスできてしまうことを防ぐために、未ログインユーザーにはrequire_loginをする。redirect_back_or_toもそ
  before_action :require_login

  def not_authenticated
    redirect_to login_path, alert: "ログインしてください"
  end
end
