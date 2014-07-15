class EmailMarketingProvider
  def subscribe!(user)
    if Rails.env.production?
      perform_subscription!(user)
    else
      Rails.logger.info "[Marketing][SKIPPED] Subscribing #{user.email} to Mailchimp"
    end
  end

  private

  def perform_subscription!(user)
    mailchimp = Mailchimp::API.new(MAILCHIMP_API_KEY)
    subscription = mailchimp.lists.subscribe(MAILCHIMP_LIST_ID, { "email" => user.email })
    Rails.logger.info "[Marketing] Subscribing #{user.email} to Mailchimp"
  rescue => e
    Rails.logger.info "[Marketing] Error subscribing #{user.email} to Mailchimp"
    Rails.logger.info "[Marketing] #{e.class} | #{e.message}"
  end
end