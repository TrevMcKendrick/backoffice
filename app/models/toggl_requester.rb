class TogglRequester

  attr_accessor :user_agent, :workspace_id, :since, :until, :billable, :client_ids, :client_name, :project_ids, :user_ids, :display_hours, :grouping, :subgrouping, :page, :rounding

  def initialize(options = {})
    self.user_agent = TOGGL_USER_AGENT
    self.workspace_id = TOGGL_WORKSPACE_ID
    self.since = options[:since] || (Date.today-364).to_s
    self.until = options[:until] || Date.today.to_s
    self.billable = options[:billable] || 'both'
    # self.client_ids = options[:client_ids] || 0
    self.client_ids = ["#{client_id(options[:client_name])}"]
    # self.project_ids = options[:project_ids] || 0
    self.user_ids = options[:user_ids] || ''
    self.display_hours = options[:display_hours] || 'minutes'
    self.grouping = options[:grouping] || 'clients'
    self.subgrouping = options[:subgrouping] || 'time_entries'
    self.page = options[:page] || 1
    self.rounding = 'on'
  end

  def detail_request
    HTTParty.get(details_uri, :query => { "user_agent" => self.user_agent, "workspace_id" => self.workspace_id, "since" => self.since, "until" => self.until, "billable" => self.billable, "client_ids" => self.client_ids, "project_ids" => self.project_ids, "user_ids" => self.user_ids, "display_hours" => self.display_hours, "rounding" => self.rounding }, :basic_auth => {:username => Rails.application.secrets.toggl_key, :password => "api_token"}, :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json' })
  end

  # def summary_request
  #   HTTParty.get(details_uri, :query => { "user_agent" => self.user_agent, "workspace_id" => self.workspace_id, "since" => self.since, "until" => self.until, "billable" => self.billable, "client_ids" => self.client_ids, "project_ids" => self.project_ids, "user_ids" => self.user_ids, "display_hours" => self.display_hours, "grouping" => self.grouping, "subgrouping" => self.subgrouping }, :basic_auth => {:username => Rails.application.secrets.toggl_key, :password => "api_token"}, :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json' })
  # end

  def clients_request
    HTTParty.get(clients_uri, :query => { "user_agent" => self.user_agent, "workspace_id" => self.workspace_id }, :basic_auth => {:username => Rails.application.secrets.toggl_key, :password => "api_token"}, :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json' })
  end

  def client_id(client_name)
    client = clients_request.select { |client| client["name"] == client_name }
    client = client.try(:first)
    return client["id"] unless client == nil
  end

  def full_response?
    detail_request["total_count"] <= 50 ? true : false
  end

  def time
    self.full_response? ? parsed_response["total_grand"] : nil
  end

  private

  def details_uri
    "https://toggl.com/reports/api/v2/details?"
  end

  # def summary_uri
  #   "https://toggl.com/reports/api/v2/summary?"
  # end

  def clients_uri
    "https://www.toggl.com/api/v8/clients"
  end

  def parsed_response
    detail_request.parsed_response
  end


end