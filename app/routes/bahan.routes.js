module.exports = app => {
  const bahan = require("../controllers/bahan.controller.js");

  app.get("/bahan", bahan.getAll);
  // Retrieve price from bahan
  app.get("/bahan/:idbahan", bahan.getData);

  app.get("/bahan/:idbahan/:jumlah/:saldo", bahan.buyBahan);

  
};