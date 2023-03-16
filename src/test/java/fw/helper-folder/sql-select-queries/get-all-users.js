function(params){
	var query = `Select users from TableName where condition`;
	var results = params.jdbcClient.executeQuery(query)
	return Object.keys(params).includes('index') ? results[params.index].get('ID'):results[0].get('ID')
}