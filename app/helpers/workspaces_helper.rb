module WorkspacesHelper

  def readable_date(timpestamp)
    Time.at(timpestamp).strftime("%B %-d, %Y")
  end

end
