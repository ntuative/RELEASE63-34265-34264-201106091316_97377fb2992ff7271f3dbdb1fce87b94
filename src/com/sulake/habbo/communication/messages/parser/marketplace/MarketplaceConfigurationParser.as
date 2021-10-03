package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1606:Boolean;
      
      private var var_2351:int;
      
      private var var_1762:int;
      
      private var var_1761:int;
      
      private var var_2350:int;
      
      private var var_2352:int;
      
      private var var_2355:int;
      
      private var var_2354:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1606;
      }
      
      public function get commission() : int
      {
         return this.var_2351;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1762;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1761;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2352;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2350;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2355;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2354;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1606 = param1.readBoolean();
         this.var_2351 = param1.readInteger();
         this.var_1762 = param1.readInteger();
         this.var_1761 = param1.readInteger();
         this.var_2352 = param1.readInteger();
         this.var_2350 = param1.readInteger();
         this.var_2355 = param1.readInteger();
         this.var_2354 = param1.readInteger();
         return true;
      }
   }
}
