package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_232:int;
      
      private var var_2494:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_232 = param1;
         this.var_2494 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_232,this.var_2494];
      }
      
      public function dispose() : void
      {
      }
   }
}
