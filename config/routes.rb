Rails.application.routes.draw do
  devise_for :workers
  root to: "job_ads#index"
end
