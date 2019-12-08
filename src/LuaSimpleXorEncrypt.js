import utf8 from 'utf8';
import luamin from 'luamin';
import simpleXorEncrypt from './SimpleXorEncrypt';


function luaSimpleXorEncrypt(bytes, key, options = {}) {
  let encrypted = simpleXorEncrypt(bytes, utf8.encode(key));
  
  let code = (options.isGG ? templates.keyInputCodeGG : templates.keyInputCode)
    + templates.main
    + (options.isLua52 ? templates.load : templates.loadstring)
}

export default luaSimpleXorEncrypt;
