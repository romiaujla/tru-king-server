require('dotenv').config();

module.exports = {
    "migrationsDirectory" : "migrations",
    "client" : "pg",
    "connectionString" : (process.env.NODE === 'test')
        ? process.env.TEST_DB_URL
        : process.env.DB_URL
}