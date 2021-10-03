package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1327:int;
      
      private var var_1853:String;
      
      private var var_1238:int;
      
      private var var_1237:int;
      
      private var var_1854:int;
      
      private var var_1809:int;
      
      private var var_1298:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1327 = param1.readInteger();
         this.var_1853 = param1.readString();
         this.var_1238 = param1.readInteger();
         this.var_1237 = param1.readInteger();
         this.var_1854 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1298 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1298.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1809 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1327;
      }
      
      public function get localizationId() : String
      {
         return this.var_1853;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1238;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1237;
      }
      
      public function get products() : Array
      {
         return this.var_1298;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1854;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1809;
      }
   }
}
