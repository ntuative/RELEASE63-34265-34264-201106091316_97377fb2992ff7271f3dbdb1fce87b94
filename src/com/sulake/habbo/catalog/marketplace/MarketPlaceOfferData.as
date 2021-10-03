package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_118:int = 1;
      
      public static const const_73:int = 2;
       
      
      private var var_1327:int;
      
      private var _furniId:int;
      
      private var var_2274:int;
      
      private var var_2199:String;
      
      private var var_1723:int;
      
      private var var_2277:int;
      
      private var var_2276:int;
      
      private var var_425:int;
      
      private var var_2275:int = -1;
      
      private var var_1724:int;
      
      private var var_47:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1327 = param1;
         this._furniId = param2;
         this.var_2274 = param3;
         this.var_2199 = param4;
         this.var_1723 = param5;
         this.var_425 = param6;
         this.var_2277 = param7;
         this.var_1724 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_47)
         {
            this.var_47.dispose();
            this.var_47 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2277;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_47 != null)
         {
            this.var_47.dispose();
         }
         this.var_47 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2276 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2276;
      }
      
      public function get status() : int
      {
         return this.var_425;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2275;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2275 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1723 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1327 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1724;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1724 = param1;
      }
   }
}
