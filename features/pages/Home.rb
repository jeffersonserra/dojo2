class Home  < SitePrism::Page

		element :homeMenu, '#moduleTab_Home'  
	  	element :createMenu,:xpath,"//*[@id='quickcreatetop']/a"
  	  	element :createMenuList,:xpath,"//*[@id='quickcreatetop']/ul/li[7]/a"

  	  end
  	 

