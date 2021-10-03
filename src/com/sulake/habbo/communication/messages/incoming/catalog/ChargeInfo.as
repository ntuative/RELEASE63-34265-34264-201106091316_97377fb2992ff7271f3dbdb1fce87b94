package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2338:int;
      
      private var var_2337:int;
      
      private var var_1238:int;
      
      private var var_1237:int;
      
      private var var_1854:int;
      
      private var var_2339:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2338 = param1.readInteger();
         this.var_2337 = param1.readInteger();
         this.var_1238 = param1.readInteger();
         this.var_1237 = param1.readInteger();
         this.var_1854 = param1.readInteger();
         this.var_2339 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2338;
      }
      
      public function get charges() : int
      {
         return this.var_2337;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1238;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1237;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2339;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1854;
      }
   }
}
