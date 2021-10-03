package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1930:int = 0;
      
      private var var_1535:Dictionary;
      
      private var var_1953:int = 0;
      
      private var var_1954:int = 0;
      
      private var var_2666:Boolean = false;
      
      private var var_2667:int = 0;
      
      private var var_2668:int = 0;
      
      public function Purse()
      {
         this.var_1535 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1930;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1930 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1953;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1953 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1954;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1954 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1953 > 0 || this.var_1954 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2666;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2666 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2667;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2667 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2668;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2668 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1535;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1535 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1535[param1];
      }
   }
}
