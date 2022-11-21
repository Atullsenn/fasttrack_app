const sql=require('../config/dbConnection');
exports.geoTimezone=(result)=>{
    sql.query(`SELECT * FROM T_GEO_TIMEZONE ORDER BY  TMZ_DES ASC;`, (err, res) => {
        if (err) {
          result(err, null);
          return;
        }
    
        if (res.length) {
         // console.log(res);
          result(null,res);
          return;
        }
    
        // not found Tutorial with the id
        result({message: "not_found" }, null);
      });
}
exports.geocountry=(result)=>{
    sql.query(`SELECT * FROM T_GEO_COUNTRY ORDER BY COU_ISO_ALPHA  ASC;`, (err, res) => {
        if (err) {
          result(err, null);
          return;
        }
    
        if (res.length) {
         // console.log(res);
          result(null,res);
          return;
        }
    
        // not found Tutorial with the id
        result({message: "not_found" }, null);
      });
}

exports.Tlanguage=(result)=>{
    sql.query(`SELECT * FROM T_LANGUAGE  ORDER BY L_FULL_NAME  ASC;`, (err, res) => {
        if (err) {
          result(err, null);
          return;
        }
    
        if (res.length) {
         // console.log(res);
          result(null,res);
          return;
        }
    
        // not found Tutorial with the id
        result({message: "not_found" }, null);
      });
}
exports.roleinCompany=(result)=>{
  sql.query(`SELECT * FROM T_COMPANY_ROLE`,(err,res)=>{
    if(err){
      result(err,null);
      return;
    }
    if(res.length){
      result(null,res);
      return;
    }
    return result({message: "not_found" }, null);
  })
  

}
exports.companyBranch=(result)=>{
  sql.query(`SELECT * FROM T_COMPANY_BRANCH`,(err,res)=>{
    if(err){
      result(err,null);
      return;
    }
    if(res.length){
      result(null,res);
      return;
    }
    return result({message: "not_found" }, null);
  })
  
}
exports.CURRENCY=(result)=>{
 
sql.query(`SELECT * FROM T_CURRENCY `,(err,res)=>{
  //console.log(res)
  if(err){
    result(err,null);
    return;
  }
    result(null,res);
    return;
})

}
exports.department=(result)=>{
  sql.query(`SELECT * FROM T_COMPANY_DEPT`,(err,res)=>{
    if(err){
      result(err,null);
      return;
    }
    if(res.length){
      result(null,res);
      return;
    }
    return result({message: "not_found" }, null);
  })
}