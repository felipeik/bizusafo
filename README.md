# Notícias da Comunidade

1. Site oficial em [bizusafo.com.br](http://bizusafo.com.br)

2. Configure o aplicativo do Facebook através das variáveis de ambiente:

ENV['FACEBOOK_APP_ID']
ENV['FACEBOOK_APP_SECRET']

ex: heroku config:set FACEBOOK_APP_ID=8N029N81 FACEBOOK_APP_SECRET=9s83109d3+583493190

3. Configure o envio de emails pelo SendGrid com variáveis de ambiente:

ENV['SENDGRID_USERNAME']
ENV['SENDGRID_PASSWORD']

ex: heroku config:set SENDGRID_USERNAME=8N029N81 SENDGRID_PASSWORD=9s83109d3+583493190

3. Configure a inscrição na lista de email no Mailchimp com variáveis de ambiente:

ENV['MAILCHIMP_API_KEY']
ENV['MAILCHIMP_LIST_ID']

ex: heroku config:set MAILCHIMP_API_KEY=8N029N81 MAILCHIMP_LIST_ID=9s83109d3+583493190