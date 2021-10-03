package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_729:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_323:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_729);
         this.var_323 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_323;
      }
   }
}
