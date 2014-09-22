Rails.application.routes.draw do

  root 'pages#home'
  get 'faq' => 'pages#faq'
  get 'what-we-do' => 'pages#what_we_do'
  get 'pricing' => 'pages#pricing'
  get 'contact-us' => 'pages#contact_us'
  get 'request-phone-call' => 'pages#request_phone_call'
  get 'request-invite' => 'pages#request_invite'
  get 'example-tasks' => 'pages#example_tasks'
  get 'jobs' => 'pages#jobs'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

end
