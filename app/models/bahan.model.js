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


Bahan.buyBahan = (jumlah,saldo,result) => {
	
	sql.query("SELECT harga_bahan FROM daftar_bahan", (err,res) => {
		if(err){
			console.log("error: ",err);
			result(err,null);
			return;
		}
		
		var total = 0;
		var i = 0;
		jumlah.forEach(element=> {
			if (element != 0){
				var row = res[i];
				total += element * row.harga_bahan; 
			}
			i+=1;
		});
		
		if(total > saldo){
			var sisaSaldo = total - saldo;
			result(null, {status:false,sisa:sisaSaldo});
	        return;
		}
	     else {
	     	var sisaSaldo = saldo - total;
	     	result(null,{status:true,sisa:sisaSaldo});
			return;
	     }
	});
};



module.exports = Bahan;
