class User < ActiveRecord::Base

  def email
		RestClient.post "https://api:key-5b783bdac4ff6080aa78870e48d6b835"\
		"@api.mailgun.net/v3/sandbox7456adfb54af4bb4a710f37f0760a1e4.mailgun.org/messages",
		:from => "Mailgun Sandbox <postmaster@sandbox7456adfb54af4bb4a710f37f0760a1e4.mailgun.org>",
		:to => "Brad Smith <brad@smithwebtek.com>",
		:subject => "Hello Brad Smith",
		:text => "Congratulations Brad Smith, you just sent an email with Mailgun!  You are truly awesome!  You can see a record of this email in your logs: https://mailgun.com/cp/log .  You can send up to 300 emails/day from this sandbox server.  Next, you should add your own domain so you can send 10,000 emails/month for free."
	end
    

end
