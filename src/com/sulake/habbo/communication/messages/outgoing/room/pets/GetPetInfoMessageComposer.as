package com.sulake.habbo.communication.messages.outgoing.room.pets
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class GetPetInfoMessageComposer implements IMessageComposer
   {
       
      
      private var var_1932:int;
      
      public function GetPetInfoMessageComposer(param1:int)
      {
         super();
         this.var_1932 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1932];
      }
      
      public function dispose() : void
      {
      }
   }
}
