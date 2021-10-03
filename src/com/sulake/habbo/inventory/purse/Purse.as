package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1953:int = 0;
      
      private var var_1954:int = 0;
      
      private var var_2683:int = 0;
      
      private var var_2682:Boolean = false;
      
      private var var_2666:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1953 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1954 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2683 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2682 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2666 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1953;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1954;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2683;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2682;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2666;
      }
   }
}
