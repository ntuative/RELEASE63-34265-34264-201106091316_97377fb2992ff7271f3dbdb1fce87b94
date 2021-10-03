package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_951:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2393:String;
      
      private var var_2392:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_951,param3,param4);
         this.var_2393 = param1;
         this.var_2392 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2393;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2392;
      }
   }
}
