package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1327:int;
      
      private var _furniId:int;
      
      private var var_2274:int;
      
      private var var_2199:String;
      
      private var var_1723:int;
      
      private var var_425:int;
      
      private var var_2275:int = -1;
      
      private var var_2277:int;
      
      private var var_1724:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1327 = param1;
         this._furniId = param2;
         this.var_2274 = param3;
         this.var_2199 = param4;
         this.var_1723 = param5;
         this.var_425 = param6;
         this.var_2275 = param7;
         this.var_2277 = param8;
         this.var_1724 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1327;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2274;
      }
      
      public function get stuffData() : String
      {
         return this.var_2199;
      }
      
      public function get price() : int
      {
         return this.var_1723;
      }
      
      public function get status() : int
      {
         return this.var_425;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2275;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2277;
      }
      
      public function get offerCount() : int
      {
         return this.var_1724;
      }
   }
}
