require 'http'

response = HTTP.headers(:accept => "application/json")
	.cookies(:_veeqo_session_v3 => 'BAh7CEkiD3Nlc3Npb25faWQGOgZFVEkiJWE3NzI1MjliOGE4NWVlN2JkYTdmNmY3Y2U0ZmE0ZmEzBjsAVEkiEF9jc3JmX3Rva2VuBjsARkkiMVdpNURKdEJvV0g5aXMydHhZbnJsb0NYVkdpczBRNXp5YVlmSVk2N2xGenc9BjsARkkiFGN1cnJlbnRfdXNlcl9pZAY7AEZpAhBv--5fc15099e7cc294675479044baf0a6f7ef27b1d7')
	.get('https://app.veeqo.com/orders/34876370')
puts response.status
puts response.parse['total_price']
puts (response.parse['customer']['billing_address']['first_name'] + ' ' + response.parse['customer']['billing_address']['last_name'])
puts response.parse['customer']['billing_address']['city']
puts 'Ayperi Faisova'
