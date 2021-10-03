package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1071:BigInteger;
      
      private var var_2909:BigInteger;
      
      private var var_2116:BigInteger;
      
      private var var_2939:BigInteger;
      
      private var var_1651:BigInteger;
      
      private var var_2117:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1651 = param1;
         this.var_2117 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1651.toString() + ",generator: " + this.var_2117.toString() + ",secret: " + param1);
         this.var_1071 = new BigInteger();
         this.var_1071.fromRadix(param1,param2);
         this.var_2909 = this.var_2117.modPow(this.var_1071,this.var_1651);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2116 = new BigInteger();
         this.var_2116.fromRadix(param1,param2);
         this.var_2939 = this.var_2116.modPow(this.var_1071,this.var_1651);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2909.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2939.toRadix(param1);
      }
   }
}
