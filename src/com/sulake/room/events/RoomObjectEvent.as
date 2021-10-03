package com.sulake.room.events
{
   import flash.events.Event;
   
   public class RoomObjectEvent extends Event
   {
       
      
      private var var_232:int = 0;
      
      private var var_1385:String = "";
      
      public function RoomObjectEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.var_232 = param2;
         this.var_1385 = param3;
      }
      
      public function get objectId() : int
      {
         return this.var_232;
      }
      
      public function get objectType() : String
      {
         return this.var_1385;
      }
   }
}