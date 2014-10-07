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
  get 'google-calendar-sharing' => 'pages#google_calendar_sharing'
  get 'email-delegation-google' => 'pages#email_delegation_google'
  get 'brainstorm-triggers' => 'pages#brainstorm_triggers'

  get '(*path)' => 'application#blog', :constraints => {subdomain: 'blog'}

  get '/blog' => redirect("http://www.trybackoffice.com/blog/")
  # get '/blog' => redirect("lvh.me:3000/blog/")


end
