package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1915:int;
      
      private var var_1845:Number;
      
      private var var_2477:Number;
      
      private var var_2478:int;
      
      private var var_2475:Number;
      
      private var var_2476:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1915 = param1;
         this.var_1845 = param2;
         this.var_2477 = param3;
         this.var_2475 = param4;
         this.var_2476 = param5;
         this.var_2478 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1915;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1845 < 0)
         {
            return 0;
         }
         return this.var_1845 + (getTimer() - this.var_2478) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2477;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2475;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2476;
      }
   }
}
