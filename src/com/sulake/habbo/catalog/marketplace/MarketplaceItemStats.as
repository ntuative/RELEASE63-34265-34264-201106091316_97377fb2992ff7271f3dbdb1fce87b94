package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2277:int;
      
      private var var_2648:int;
      
      private var var_2649:int;
      
      private var _dayOffsets:Array;
      
      private var var_2099:Array;
      
      private var var_2098:Array;
      
      private var var_2650:int;
      
      private var var_2651:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2277 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2648 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2649 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_2099 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_2098 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2650 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2651 = param1;
      }
   }
}
