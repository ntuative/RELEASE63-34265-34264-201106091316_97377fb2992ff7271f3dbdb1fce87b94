package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1327:int;
      
      private var var_1747:String;
      
      private var var_1723:int;
      
      private var _upgrade:Boolean;
      
      private var var_2642:Boolean;
      
      private var var_2637:int;
      
      private var var_2639:int;
      
      private var var_2636:int;
      
      private var var_2638:int;
      
      private var var_2641:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1327 = param1.readInteger();
         this.var_1747 = param1.readString();
         this.var_1723 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2642 = param1.readBoolean();
         this.var_2637 = param1.readInteger();
         this.var_2639 = param1.readInteger();
         this.var_2636 = param1.readInteger();
         this.var_2638 = param1.readInteger();
         this.var_2641 = param1.readInteger();
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
   }
}
