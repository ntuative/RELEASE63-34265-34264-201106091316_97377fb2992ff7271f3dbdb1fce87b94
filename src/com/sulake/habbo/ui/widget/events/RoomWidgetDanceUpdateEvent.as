package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetDanceUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_721:String = "RWUE_DANCE";
       
      
      private var var_87:int;
      
      public function RoomWidgetDanceUpdateEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_721,param2,param3);
         this.var_87 = param1;
      }
      
      public function get style() : int
      {
         return this.var_87;
      }
   }
}
