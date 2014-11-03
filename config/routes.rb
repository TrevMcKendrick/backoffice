Rails.application.routes.draw do
  root 'pages#home'

  devise_for :employees

  get 'workspaces' => 'workspaces#show'
  get 'faq' => 'pages#faq'
  get 'what-we-do' => 'pages#what_we_do'
  get 'pricing' => 'pages#pricing'
  get 'contact-us' => 'pages#contact_us'
  get 'request-phone-call' => 'pages#request_phone_call'
  get 'request-invite' => 'pages#request_invite'
  get 'example-tasks' => 'pages#example_tasks'
  get 'careers' => 'pages#careers'
  get 'google-calendar-sharing' => 'pages#google_calendar_sharing'
  get 'email-delegation-google' => 'pages#email_delegation_google'
  get 'brainstorm-triggers' => 'pages#brainstorm_triggers'
  get 'customer-info' => 'pages#customer_info'
  get 'calendar-instructions-barbara' => 'pages#calendar_instructions_barbara'

  get '(*path)' => 'application#blog', :constraints => {subdomain: 'blog'}
  #
  get '/blog' => redirect("http://www.trybackoffice.com/blog/")

  post '/customers/create' => "customers#create"

end
