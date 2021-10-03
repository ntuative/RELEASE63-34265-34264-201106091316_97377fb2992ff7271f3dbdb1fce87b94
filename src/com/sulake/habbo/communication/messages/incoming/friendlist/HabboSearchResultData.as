package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2509:int;
      
      private var var_1867:String;
      
      private var var_2513:String;
      
      private var var_2528:Boolean;
      
      private var var_2527:Boolean;
      
      private var var_2526:int;
      
      private var var_2512:String;
      
      private var var_2525:String;
      
      private var var_1866:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2509 = param1.readInteger();
         this.var_1867 = param1.readString();
         this.var_2513 = param1.readString();
         this.var_2528 = param1.readBoolean();
         this.var_2527 = param1.readBoolean();
         param1.readString();
         this.var_2526 = param1.readInteger();
         this.var_2512 = param1.readString();
         this.var_2525 = param1.readString();
         this.var_1866 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2509;
      }
      
      public function get avatarName() : String
      {
         return this.var_1867;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2513;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2528;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2527;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2526;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2512;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2525;
      }
      
      public function get realName() : String
      {
         return this.var_1866;
      }
   }
}
