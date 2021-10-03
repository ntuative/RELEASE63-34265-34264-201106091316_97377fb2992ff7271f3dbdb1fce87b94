package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2277:int;
      
      private var var_2648:int;
      
      private var var_2649:int;
      
      private var _dayOffsets:Array;
      
      private var var_2099:Array;
      
      private var var_2098:Array;
      
      private var var_2650:int;
      
      private var var_2651:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2277;
      }
      
      public function get offerCount() : int
      {
         return this.var_2648;
      }
      
      public function get historyLength() : int
      {
         return this.var_2649;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_2099;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_2098;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2650;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2651;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2277 = param1.readInteger();
         this.var_2648 = param1.readInteger();
         this.var_2649 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_2099 = [];
         this.var_2098 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_2099.push(param1.readInteger());
            this.var_2098.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2651 = param1.readInteger();
         this.var_2650 = param1.readInteger();
         return true;
      }
   }
}
