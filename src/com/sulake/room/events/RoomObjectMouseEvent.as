package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_167:String = "ROE_MOUSE_CLICK";
      
      public static const const_186:String = "ROE_MOUSE_ENTER";
      
      public static const const_615:String = "ROE_MOUSE_MOVE";
      
      public static const const_189:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2196:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_626:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1704:String = "";
      
      private var var_2655:Boolean;
      
      private var var_2653:Boolean;
      
      private var var_2656:Boolean;
      
      private var var_2657:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1704 = param2;
         this.var_2655 = param5;
         this.var_2653 = param6;
         this.var_2656 = param7;
         this.var_2657 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1704;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2655;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2653;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2656;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2657;
      }
   }
}
