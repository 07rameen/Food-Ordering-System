var Symbol=require("./_Symbol"),symbolProto=Symbol?Symbol.prototype:void 0,symbolValueOf=symbolProto?symbolProto.valueOf:void 0;function cloneSymbol(o){return symbolValueOf?Object(symbolValueOf.call(o)):{}}module.exports=cloneSymbol;