function fn() {



  var config = {
    name : "Ulrich",
    baseUrl : 'https://pesa-backend-production.up.railway.app',
    authorization: ''
  }

  var result = karate.callSingle('login.feature', config);
  config.authorization = 'Bearer '+ result.response.token;


  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);

  return config;

}