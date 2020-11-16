const sql = require("./db.js");

// constructor
const Bahan  = function(bahan) {
  this.id = bahan.id;
  this.nama = bahan.nama;
  this.harga = bahan.harga;
};

Bahan.getAll = (result) => {
	sql.query("SELECT * FROM daftar_bahan",(err,res)=>{
		if(err){
			console.log("error: ",err);
			result(err,null);
			return;
		}
		result(null,res);
		return;
	});
};

Bahan.getData = (idbahan,result) => {
	sql.query(`SELECT * FROM daftar_bahan WHERE id_bahan = ?`,[idbahan],(err,res) => {
		if(err){
			console.log("error: ",err);
			result(err,null);
			return;
		}
		result(null,res);
		return;
	});
};


Bahan.buyBahan = (idbahan,jumlah,result) => {
	sql.query("SELECT harga_bahan * ? as total FROM daftar_bahan WHERE id_bahan = ?",[jumlah,idbahan], (err,res) => {
		if(err){
			console.log("error: ",err);
			result(err,null);
			return;
		}
		result(null,res);
		return;
	});
};

module.exports = Bahan;
