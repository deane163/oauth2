# oauth2    //  从  https://gitee.com/sunchangming/oauth2   froked而来，感谢原作者

#### 项目介绍
OAUTH协议为用户资源的授权提供了一个安全的、开放而又简易的标准。与以往的授权方式不同之处是OAUTH的授权不会使第三方触及到用户的帐号信息（如用户名与密码），即第三方无需使用用户的用户名与密码就可以申请获得该用户资源的授权，因此OAUTH是安全的。

#### 1、获取code
http://127.0.0.1:8080/oauth2/authorize?scope=user%2Corder&response_type=code&username=root&password=root&client_id=fbed1d1b4b1449daa4bc49397cbe2350&redirect_uri=https%3A%2F%2Fapi.ubtrobot.com%2Fubtoauth%2Fclient%2Foauth_callback&state=xyz
e38e577d2f21ec9db856f4241d69fbe6

#### 2、获取accessToken
http://127.0.0.1:8080/oauth2/accessToken?client_id=fbed1d1b4b1449daa4bc49397cbe2350&client_secret=123456&grant_type=authorization_code&redirect_uri=https%3A%2F%2Fapi.ubtrobot.com%2Fubtoauth%2Fclient%2Foauth_callback&state=xyz&code=6b32b1923fc7795839fd4db0f4014ace
{
  "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzY3AiOiJ1c2VyLG9yZGVyIiwic3RhIjoieHl6IiwiY2xpIjoiZmJlZDFkMWI0YjE0NDlkYWE0YmM0OTM5N2NiZTIzNTAiLCJzdWIiOiJyb290IiwiaXNzIjoiVFNQMDEiLCJleHAiOiIxNTQ0Nzc3NDk4IiwiaWF0IjoiMTU0NDc3MDI5OCJ9.ND_jtPjxI0myLW5OC6ls3aE0ZxZziiOKtCRqC5TBX30",
  "refresh_token": "05f93b68882568baf8017b70ef6734e1",
  "expires_in": 7200
}

#### 3、根据refreshToken 刷新 accessToken
http://127.0.0.1:8080/oauth2/accessToken?client_id=fbed1d1b4b1449daa4bc49397cbe2350&client_secret=123456&grant_type=refresh_token&refresh_token=05f93b68882568baf8017b70ef6734e1
{
  "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzY3AiOiJ1c2VyLG9yZGVyIiwic3RhIjoieHl6IiwiY2xpIjoiZmJlZDFkMWI0YjE0NDlkYWE0YmM0OTM5N2NiZTIzNTAiLCJzdWIiOiJyb290IiwiaXNzIjoiVFNQMDEiLCJleHAiOiIxNTQ0Nzc4MTEzIiwiaWF0IjoiMTU0NDc3MDkxMyJ9.9l_PfyLO3nZ9X4ZdbMfvu1vJL68Gi3bHiaLy1cnOfTs",
  "refresh_token": "12448d33656ed7df31d22de213c03436",
  "expires_in": 7200
}

####  4、根据accessToken 获取用户信息
http://127.0.0.1:8080/oauth2/checkoutToken?accessToken=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzY3AiOiJ1c2VyLG9yZGVyIiwic3RhIjoieHl6IiwiY2xpIjoiZmJlZDFkMWI0YjE0NDlkYWE0YmM0OTM5N2NiZTIzNTAiLCJzdWIiOiJyb290IiwiaXNzIjoiVFNQMDEiLCJleHAiOiIxNTQ0Nzc4MTEzIiwiaWF0IjoiMTU0NDc3MDkxMyJ9.9l_PfyLO3nZ9X4ZdbMfvu1vJL68Gi3bHiaLy1cnOfTs
{"flag":true,"app_account_id":"root","state":"xyz","client_id":"fbed1d1b4b1449daa4bc49397cbe2350"}