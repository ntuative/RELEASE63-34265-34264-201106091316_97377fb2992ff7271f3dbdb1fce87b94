package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2279:int = 0;
      
      private var var_1476:String = "";
      
      private var var_1833:String = "";
      
      private var var_2459:String = "";
      
      private var var_2482:String = "";
      
      private var var_1846:int = 0;
      
      private var var_2479:int = 0;
      
      private var var_2481:int = 0;
      
      private var var_1474:int = 0;
      
      private var var_2480:int = 0;
      
      private var var_1475:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2279 = param1;
         this.var_1476 = param2;
         this.var_1833 = param3;
         this.var_2459 = param4;
         this.var_2482 = param5;
         if(param6)
         {
            this.var_1846 = 1;
         }
         else
         {
            this.var_1846 = 0;
         }
         this.var_2479 = param7;
         this.var_2481 = param8;
         this.var_1474 = param9;
         this.var_2480 = param10;
         this.var_1475 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2279,this.var_1476,this.var_1833,this.var_2459,this.var_2482,this.var_1846,this.var_2479,this.var_2481,this.var_1474,this.var_2480,this.var_1475];
      }
   }
}
