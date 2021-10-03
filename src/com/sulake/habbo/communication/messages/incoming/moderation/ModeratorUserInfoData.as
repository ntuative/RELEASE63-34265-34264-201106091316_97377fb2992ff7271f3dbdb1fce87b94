package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2811:int;
      
      private var var_2816:int;
      
      private var var_790:Boolean;
      
      private var var_2813:int;
      
      private var var_2814:int;
      
      private var var_2815:int;
      
      private var var_2812:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2811 = param1.readInteger();
         this.var_2816 = param1.readInteger();
         this.var_790 = param1.readBoolean();
         this.var_2813 = param1.readInteger();
         this.var_2814 = param1.readInteger();
         this.var_2815 = param1.readInteger();
         this.var_2812 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2811;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2816;
      }
      
      public function get online() : Boolean
      {
         return this.var_790;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2813;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2814;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2815;
      }
      
      public function get banCount() : int
      {
         return this.var_2812;
      }
   }
}
