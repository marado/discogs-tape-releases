/* 
 * Discogs API documentation:
 * * https://www.discogs.com/developers/#page:database,header:database-search
 * 
 * JS library to use discogs API:
 * * https://github.com/bartve/disconnect
 *
 * This script fetches the number of cassette tape releases per year, according
 * to the most recent discogs data.
 */

// usage: node fetch-data.js API_TOKEN year
var myArgs = process.argv.slice(2);
var userToken  = myArgs[0];
var searchYear = myArgs[1];

var Discogs = require('disconnect').Client;
var db = new Discogs({userToken: userToken}).database();

var search = {year: searchYear, type: "release", format: "Cassette"};
try {
	db.search(search, function(empty, result, usage) {
		console.log(result.pagination.items);
	});
} catch(err) {
	console.error("# ERROR: trying to get " + searchYear + " we got: " + err);
};
