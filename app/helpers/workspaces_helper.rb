module WorkspacesHelper
  def readable_date(timestamp)
    Time.at(timestamp).strftime("%B %-d, %Y")
  end

  def unix_to_toggl(timestamp)
    Time.at(timestamp).strftime("%Y-%m-%d")
  end
end
