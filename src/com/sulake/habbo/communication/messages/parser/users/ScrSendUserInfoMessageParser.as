package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2115:int = 1;
      
      public static const const_1729:int = 2;
       
      
      private var var_987:String;
      
      private var var_2838:int;
      
      private var var_2840:int;
      
      private var var_2839:int;
      
      private var var_2841:int;
      
      private var var_2835:Boolean;
      
      private var var_2666:Boolean;
      
      private var var_2667:int;
      
      private var var_2668:int;
      
      private var var_2834:Boolean;
      
      private var var_2837:int;
      
      private var var_2836:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_987 = param1.readString();
         this.var_2838 = param1.readInteger();
         this.var_2840 = param1.readInteger();
         this.var_2839 = param1.readInteger();
         this.var_2841 = param1.readInteger();
         this.var_2835 = param1.readBoolean();
         this.var_2666 = param1.readBoolean();
         this.var_2667 = param1.readInteger();
         this.var_2668 = param1.readInteger();
         this.var_2834 = param1.readBoolean();
         this.var_2837 = param1.readInteger();
         this.var_2836 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_987;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2838;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2840;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2839;
      }
      
      public function get responseType() : int
      {
         return this.var_2841;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2835;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2666;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2667;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2668;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2834;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2837;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2836;
      }
   }
}
