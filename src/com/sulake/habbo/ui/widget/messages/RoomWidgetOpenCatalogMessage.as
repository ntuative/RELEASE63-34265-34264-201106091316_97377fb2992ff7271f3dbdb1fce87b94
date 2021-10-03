package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_397:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1246:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1367:String = "RWOCM_PIXELS";
      
      public static const const_1344:String = "RWOCM_CREDITS";
       
      
      private var var_2584:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_397);
         this.var_2584 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2584;
      }
   }
}
