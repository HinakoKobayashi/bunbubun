Rails.application.routes.draw do
  get 'welcome/index'
  # 利用者用
  devise_for :user, controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }

  # 管理者用
  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }
end
