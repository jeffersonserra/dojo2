class AcessPage < SitePrism::Page

		set_url "https://demo.suiteondemand.com/"
	  	element :loginfield, '#user_name'
  	  	element :passwordfield, '#user_password'
	  	element :loginbutton, '#bigbutton'

	  	def login(username,password)
 		loginfield.set(username)
 		passwordfield.set(password)
 		loginbutton.click

 	end

 end