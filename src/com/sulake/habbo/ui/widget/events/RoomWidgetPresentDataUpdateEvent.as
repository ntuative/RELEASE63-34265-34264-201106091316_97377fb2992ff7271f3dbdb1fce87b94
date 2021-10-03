package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_71:String = "RWPDUE_PACKAGEINFO";
      
      public static const const_98:String = "RWPDUE_CONTENTS";
      
      public static const const_575:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_549:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_644:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_496:String = "RWPDUE_CONTENTS_WALLPAPER";
       
      
      private var var_232:int = -1;
      
      private var _text:String;
      
      private var var_28:Boolean;
      
      private var var_2624:BitmapData;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_232 = param2;
         this._text = param3;
         this.var_28 = param4;
         this.var_2624 = param5;
      }
      
      public function get objectId() : int
      {
         return this.var_232;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get controller() : Boolean
      {
         return this.var_28;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return this.var_2624;
      }
   }
}
