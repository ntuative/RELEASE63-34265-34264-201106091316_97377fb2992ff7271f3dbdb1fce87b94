package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_775:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1796:String = "inventory_effects";
      
      public static const const_1198:String = "inventory_badges";
      
      public static const const_1761:String = "inventory_clothes";
      
      public static const const_1774:String = "inventory_furniture";
       
      
      private var var_2721:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_775);
         this.var_2721 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2721;
      }
   }
}
