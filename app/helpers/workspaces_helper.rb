module WorkspacesHelper
  def readable_date(timestamp)
    Time.at(timestamp).strftime("%B %-d, %Y")
  end

  def unix_to_toggl(timestamp)
    Time.at(timestamp).strftime("%Y-%m-%d")
  end

  def ms_to_hours(ms)
    ms == nil ? 0 : (ms / 3600000) % 24
  end

  def ms_to_minutes(ms)
  	ms == nil ? 0 : (ms / 60000) % 60
  end
end
