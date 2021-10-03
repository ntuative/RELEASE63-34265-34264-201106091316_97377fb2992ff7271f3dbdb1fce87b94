package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_250:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2677:int = 0;
      
      private var var_2679:int = 0;
      
      private var var_2676:int = 0;
      
      private var var_2678:Boolean = false;
      
      private var var_1809:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_250,param6,param7);
         this.var_2677 = param1;
         this.var_2679 = param2;
         this.var_2676 = param3;
         this.var_2678 = param4;
         this.var_1809 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2677;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2679;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2676;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2678;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1809;
      }
   }
}
