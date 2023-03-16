function(){
	var config = read('classpath:db-folder/jdbc-config.yml');
	var JDBCClient = Java.type('com.karate.db.JDBCClient');
	var jdbcClient = new JDBCClient(config);
	return jdbcClient.available() === true ? jdbcClient : karate.fail('JDBC connection failed')
}