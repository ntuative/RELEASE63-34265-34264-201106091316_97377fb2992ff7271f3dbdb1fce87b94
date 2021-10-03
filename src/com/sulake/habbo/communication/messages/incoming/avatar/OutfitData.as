package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2048:int;
      
      private var var_2361:String;
      
      private var var_1069:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2048 = param1.readInteger();
         this.var_2361 = param1.readString();
         this.var_1069 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_2048;
      }
      
      public function get figureString() : String
      {
         return this.var_2361;
      }
      
      public function get gender() : String
      {
         return this.var_1069;
      }
   }
}
