import utf8 from 'utf8';
import luamin from 'luamin';
import simpleXorEncrypt from './SimpleXorEncrypt';
import shuffleWithKey from './ShuffleWithKey';
import templates from './templates';

function luaSimpleXorEncrypt(bytes, key, options = {}) {
  let encrypted = simpleXorEncrypt(bytes, utf8.encode(key));

  return templates.credit
    + luamin.minify(code);
}

export default luaSimpleXorEncrypt;
