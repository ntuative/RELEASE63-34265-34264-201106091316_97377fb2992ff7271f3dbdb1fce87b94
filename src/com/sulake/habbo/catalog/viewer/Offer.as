package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1683:String = "pricing_model_unknown";
      
      public static const const_412:String = "pricing_model_single";
      
      public static const const_419:String = "pricing_model_multi";
      
      public static const const_505:String = "pricing_model_bundle";
      
      public static const const_1817:String = "price_type_none";
      
      public static const const_784:String = "price_type_credits";
      
      public static const const_1185:String = "price_type_activitypoints";
      
      public static const const_1322:String = "price_type_credits_and_activitypoints";
       
      
      private var var_789:String;
      
      private var var_1236:String;
      
      private var var_1327:int;
      
      private var var_1853:String;
      
      private var var_1238:int;
      
      private var var_1237:int;
      
      private var var_1854:int;
      
      private var var_379:ICatalogPage;
      
      private var var_637:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1809:int = 0;
      
      private var var_2496:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1327 = param1;
         this.var_1853 = param2;
         this.var_1238 = param3;
         this.var_1237 = param4;
         this.var_1854 = param5;
         this.var_379 = param8;
         this.var_1809 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1809;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_379;
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
      
      public function get activityPointType() : int
      {
         return this.var_1854;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_637;
      }
      
      public function get pricingModel() : String
      {
         return this.var_789;
      }
      
      public function get priceType() : String
      {
         return this.var_1236;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2496;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2496 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1327 = 0;
         this.var_1853 = "";
         this.var_1238 = 0;
         this.var_1237 = 0;
         this.var_1854 = 0;
         this.var_379 = null;
         if(this.var_637 != null)
         {
            this.var_637.dispose();
            this.var_637 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_789)
         {
            case const_412:
               this.var_637 = new SingleProductContainer(this,param1);
               break;
            case const_419:
               this.var_637 = new MultiProductContainer(this,param1);
               break;
            case const_505:
               this.var_637 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_789);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_789 = const_412;
            }
            else
            {
               this.var_789 = const_419;
            }
         }
         else if(param1.length > 1)
         {
            this.var_789 = const_505;
         }
         else
         {
            this.var_789 = const_1683;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1238 > 0 && this.var_1237 > 0)
         {
            this.var_1236 = const_1322;
         }
         else if(this.var_1238 > 0)
         {
            this.var_1236 = const_784;
         }
         else if(this.var_1237 > 0)
         {
            this.var_1236 = const_1185;
         }
         else
         {
            this.var_1236 = const_1817;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_379.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_637.products)
         {
            _loc4_ = this.var_379.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
