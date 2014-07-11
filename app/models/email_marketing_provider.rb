class EmailMarketingProvider
  def subscribe!(user)
    mailchimp = Mailchimp::API.new(MAILCHIMP_API_KEY)
    subscription = mailchimp.lists.subscribe(MAILCHIMP_LIST_ID, { "email" => user.email })
    Rails.logger.info "[Marketing] Subscribing #{user.email} on Mailchimp"
  rescue => e
    Rails.logger.info "[Marketing] Error subscribing #{user.email} on Mailchimp"
    Rails.logger.info "[Marketing] #{e.class} | #{e.message}"
  end
end