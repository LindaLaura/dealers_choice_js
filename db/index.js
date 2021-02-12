const pg = require('pg');

const port = process.env.PORT || 1337;


const client = new pg.Client ('postgres://localhost/dealers_choice_db');


module.exports ={client};