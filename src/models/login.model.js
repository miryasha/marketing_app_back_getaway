const Base = require("./base.model");
const CryptoJS = require("crypto-js");
require('dotenv').config();


class Login  extends Base{

    findUser(username, email, pwd){
                       
    //         return this.findWithUser(username)
    //         .then(d => {            
                
    //             const mapUser = d.map(u => u.username);
    //             const user = mapUser[0];
    //             if(user !== username){
    //                 return { message : "Username of Password is wrong"} 
                                    
    //             } else {
    //                 const mapPassword = d.map( u => u.password);
    //                 const cryptoPassword = mapPassword[0];  
    //                 // Decrypt
    //                 const bytes  = CryptoJS.AES.decrypt(cryptoPassword, process.env.PASS_HASH_USER);
    //                 const originalText = bytes.toString(CryptoJS.enc.Utf8);

    //                 if(originalText === password){
    //                         return { user : user}
    //                 } else {

    //                     return  {message : "There is no record!"};
    //                 }
                    
    //             }  
               
    //             })
    //             .catch(err => {
    //                 console.log(err);
    //                 res.status(500).end();
    //             });
       
            
    //  }  

     findWithUser(username){
        
        let sql = `SELECT * FROM users_tbl WHERE username="${username}"`;
        return this.query(sql);
                
     }

  
 }
  module.exports = Login;