const db = require("../data/dbConfig");

const find = () => db("schemes");
const findById = id => db("schemes").where({ id }).first();
const findSteps = scheme_id => {
  return db("steps as st")
    .select("st.id", "sc.scheme_name", "st.step_number", "st.instructions")
    .join("schemes as sc", "st.scheme_id", "sc.id")
    .where({ scheme_id })
    .orderBy("step_number");
};

module.exports = { find, findById, findSteps };
