package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetCreditFurniRedeemMessage extends RoomWidgetMessage
   {
      
      public static const const_709:String = "RWFCRM_REDEEM";
       
      
      private var var_232:int;
      
      public function RoomWidgetCreditFurniRedeemMessage(param1:String, param2:int)
      {
         super(param1);
         this.var_232 = param2;
      }
      
      public function get objectId() : int
      {
         return this.var_232;
      }
   }
}
