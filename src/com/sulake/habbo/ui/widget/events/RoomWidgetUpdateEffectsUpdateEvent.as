package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_733:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_267:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_733,param2,param3);
         this.var_267 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_267;
      }
   }
}
