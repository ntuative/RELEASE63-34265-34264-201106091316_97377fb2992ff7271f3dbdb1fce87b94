package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_958:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1681:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_958,false,false);
         this.var_1681 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1681;
      }
   }
}
