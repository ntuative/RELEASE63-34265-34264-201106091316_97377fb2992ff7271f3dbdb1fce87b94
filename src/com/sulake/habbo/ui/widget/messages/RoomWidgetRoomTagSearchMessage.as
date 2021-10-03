package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_742:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_2367:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_742);
         this.var_2367 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2367;
      }
   }
}
