package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_232:int = 0;
      
      private var var_1883:int = 0;
      
      private var var_1884:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_232;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1883;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1884;
      }
      
      public function flush() : Boolean
      {
         this.var_232 = 0;
         this.var_1883 = 0;
         this.var_1884 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_232 = param1.readInteger();
         this.var_1883 = param1.readInteger();
         this.var_1884 = param1.readString();
         return true;
      }
   }
}
