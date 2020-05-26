const db = require("../data/dbConfig");

const find = () => db("schemes");

module.exports = { find };
