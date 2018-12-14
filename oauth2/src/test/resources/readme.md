// 测试数据
(1) 获取code   HTTP POST
http://127.0.0.1:8080/oauth2/authorize?scope=user%2Corder&response_type=code&username=root&password=root&client_id=fbed1d1b4b1449daa4bc49397cbe2350&redirect_uri=https%3A%2F%2Fapi.ubtrobot.com%2Fubtoauth%2Fclient%2Foauth_callback&state=xyz

NWI2NGFjMWMwZmY1ZWI0ZjlkMDdjMjk4OTVlYzUzODYxZTI5MzhiNDg5OWY4ZDRkNzE1MTg0NDZjZDdlNTM0YQ==
(2) 获取 accessToken     HTTP POST 
http://127.0.0.1:8080/oauth2/accessToken?client_id=fbed1d1b4b1449daa4bc49397cbe2350&client_secret=123456&grant_type=authorization_code&redirect_uri=https%3A%2F%2Fapi.ubtrobot.com%2Fubtoauth%2Fclient%2Foauth_callback&state=xyz&code=b9632dafacba46f26a10d3eaa8c6237e
{
  "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzY3AiOiJ1c2VyLG9yZGVyIiwic3ViIjoiMSIsImlzcyI6IlRTUDAxIiwiZXhwIjoiMTU0NDc1NzQwOSIsImlhdCI6IjE1NDQ3NTAyMDkifQ.Oor1omHrpgyUcdriT9Xvy0SEI3vGUfSzfEoyknmM9W0",
  "refresh_token": "8635dede5f325c5e93f26c9f9d26e33d",
  "expires_in": 7200
}
(3) 刷新 accessToken    HTTP POST  
http://127.0.0.1:8080/oauth2/accessToken?client_id=fbed1d1b4b1449daa4bc49397cbe2350&client_secret=123456&grant_type=refresh_token&refresh_token=8635dede5f325c5e93f26c9f9d26e33d
{
  "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzY3AiOiJ1c2VyLG9yZGVyIiwic3ViIjoiMSIsImlzcyI6IlRTUDAxIiwiZXhwIjoiMTU0NDc1NzU5OCIsImlhdCI6IjE1NDQ3NTAzOTgifQ.0iUXwf3w2IVMWPA48rpw2y1owOXh4l_FiRer_DCIUa4",
  "refresh_token": "4b51ccc68f66ba80c96b7f586fba3e05",
  "expires_in": 7200
}

(3) 验证AccessToken是否过期 accessToken    HTTP POST  
http://127.0.0.1:8080/oauth2/checkoutToken?accessToken=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzY3AiOiJ1c2VyLG9yZGVyIiwic3ViIjoiMSIsImlzcyI6IlRTUDAxIiwiZXhwIjoiMTU0NDc1NzU5OCIsImlhdCI6IjE1NDQ3NTAzOTgifQ.0iUXwf3w2IVMWPA48rpw2y1owOXh4l_FiRer_DCIUa4
