package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.ActivityPointTypeEnum;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1327:int;
      
      private var var_1747:String;
      
      private var var_1723:int;
      
      private var _upgrade:Boolean;
      
      private var var_2642:Boolean;
      
      private var var_2637:int;
      
      private var var_2639:int;
      
      private var var_379:ICatalogPage;
      
      private var var_2636:int;
      
      private var var_2638:int;
      
      private var var_2641:int;
      
      private var var_1589:String;
      
      private var var_2640:Boolean = false;
      
      private var _disposed:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this.var_1327 = param1;
         this.var_1747 = param2;
         this.var_1723 = param3;
         this._upgrade = param4;
         this.var_2642 = param5;
         this.var_2637 = param6;
         this.var_2639 = param7;
         this.var_2636 = param8;
         this.var_2638 = param9;
         this.var_2641 = param10;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_379 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get extraParameter() : String
      {
         return this.var_1589;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1589 = param1;
      }
      
      public function get offerId() : int
      {
         return this.var_1327;
      }
      
      public function get productCode() : String
      {
         return this.var_1747;
      }
      
      public function get price() : int
      {
         return this.var_1723;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2642;
      }
      
      public function get periods() : int
      {
         return this.var_2637;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2639;
      }
      
      public function get year() : int
      {
         return this.var_2636;
      }
      
      public function get month() : int
      {
         return this.var_2638;
      }
      
      public function get day() : int
      {
         return this.var_2641;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return ActivityPointTypeEnum.PIXEL;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1723;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_379;
      }
      
      public function get priceType() : String
      {
         return Offer.const_784;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1747;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_379 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2640;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2640 = param1;
      }
   }
}
