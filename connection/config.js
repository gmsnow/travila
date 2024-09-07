const { Pool } = require('pg'); 
const pool = new Pool({ 
user: 'postgres', 
host: 'localhost', 
database: 'travel', 
password: '123', 
port: '5432', 
max: 20, // Maximum number of clients in the pool 
idleTimeoutMillis: 30000,})


module.exports = pool;