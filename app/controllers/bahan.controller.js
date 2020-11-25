const Bahan = require("../models/bahan.model.js");

exports.getAll = (req,res) =>  {
	Bahan.getAll((err,data) => {
		if(err) {
			res.status(500).send({
	        message:
	          err.message || "Some error occurred while retrieving customers."
	      });
		}
		else {
			res.send(data);
		};
	});
};

exports.getData = (req, res) => {
	Bahan.getData(req.params.idbahan,(err,data) => {
		if(err) {
			res.status(500).send({
	        message:
	          err.message || "Some error occurred while retrieving customers."
	      });
		}
		else {
			res.send(data);
		}
	})
  
};



exports.buyBahan = (req,res) => {
	Bahan.buyBahan(req.body.jumlah,req.body.saldo,(err,data) => {
		if(err) {
			res.status(500).send({
	        message:
	          err.message || "Some error occurred while retrieving customers."
	      });
		}
		else {
			res.send(data);
		}
	})
};
