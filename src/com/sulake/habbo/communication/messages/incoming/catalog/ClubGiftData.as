package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1327:int;
      
      private var var_2590:Boolean;
      
      private var var_2589:Boolean;
      
      private var var_2588:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1327 = param1.readInteger();
         this.var_2590 = param1.readBoolean();
         this.var_2588 = param1.readInteger();
         this.var_2589 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1327;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2590;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2589;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2588;
      }
   }
}
