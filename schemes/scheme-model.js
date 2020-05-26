const db = require("../data/dbConfig");

const find = () => db("schemes");
const findById = id => db("schemes").where({ id }).first();

module.exports = { find, findById };
