package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeEmailMessage extends RoomWidgetMessage
   {
      
      public static const const_859:String = "rwcem_change_email";
       
      
      private var var_2789:String;
      
      public function RoomWidgetChangeEmailMessage(param1:String)
      {
         super(const_859);
         this.var_2789 = param1;
      }
      
      public function get newEmail() : String
      {
         return this.var_2789;
      }
   }
}
