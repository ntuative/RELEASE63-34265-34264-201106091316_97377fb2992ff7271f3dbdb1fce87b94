package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2563:Number = 0.0;
      
      private var var_2562:Number = 0.0;
      
      private var var_2564:Number = 0.0;
      
      private var var_2561:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2563 = param1;
         this.var_2562 = param2;
         this.var_2564 = param3;
         this.var_2561 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2563;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2562;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2564;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2561;
      }
   }
}
