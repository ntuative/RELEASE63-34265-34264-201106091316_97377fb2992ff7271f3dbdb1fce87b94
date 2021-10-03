package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1344:int;
      
      private var var_1705:int;
      
      private var var_2664:int;
      
      private var var_1951:int;
      
      private var var_1534:int;
      
      private var var_323:int;
      
      private var var_2914:String = "";
      
      private var var_2915:String = "";
      
      private var var_2916:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1344 = param1.readInteger();
         this.var_323 = param1.readInteger();
         this.var_2914 = param1.readString();
         this.var_1705 = param1.readInteger();
         this.var_2664 = param1.readInteger();
         this.var_1951 = param1.readInteger();
         this.var_1534 = param1.readInteger();
         this.var_2916 = param1.readInteger();
         this.var_2915 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1344;
      }
      
      public function get points() : int
      {
         return this.var_1705;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2664;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1951;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1534;
      }
      
      public function get badgeId() : int
      {
         return this.var_323;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2914;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2915;
      }
      
      public function get achievementID() : int
      {
         return this.var_2916;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
