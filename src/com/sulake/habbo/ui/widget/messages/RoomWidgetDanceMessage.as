package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_994:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_1277:int = 0;
      
      public static const const_1718:Array = [2,3,4];
       
      
      private var var_87:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_994);
         this.var_87 = param1;
      }
      
      public function get style() : int
      {
         return this.var_87;
      }
   }
}
