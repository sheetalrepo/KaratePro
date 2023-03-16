function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  
  if (!env) {
    env = 'dev';
  }
  
  var config = {
    env: env,
    apiUrl: 'https://reqres.in/api/users'
  }
  
  if (env == 'dev') {
  	config.userName = 'Sheetal Dev'
  	config.userJob = 'Karate-Trainer'  
  }
  
  if (env == 'qa') {
  	config.userName = 'Sheetal QA'
  	config.userJob = 'Karate-Trainer'  
  } 
  else if (env == 'e2e') {
    // customize
  }
  
  return config;
}