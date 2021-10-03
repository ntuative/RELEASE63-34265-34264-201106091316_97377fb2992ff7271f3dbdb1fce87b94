package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1344:int;
      
      private var var_323:String;
      
      private var var_2119:int;
      
      private var var_2664:int;
      
      private var var_1951:int;
      
      private var var_2118:int;
      
      private var var_2120:Boolean;
      
      private var _category:String;
      
      private var var_2940:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1344 = param1.readInteger();
         this.var_323 = param1.readString();
         this.var_2119 = Math.max(1,param1.readInteger());
         this.var_2664 = param1.readInteger();
         this.var_1951 = param1.readInteger();
         this.var_2118 = param1.readInteger();
         this.var_2120 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2940 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_323;
      }
      
      public function get level() : int
      {
         return this.var_1344;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2119;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2664;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1951;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2118;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_2120;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2940;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1344 > 1 || this.var_2120;
      }
      
      public function setMaxProgress() : void
      {
         this.var_2118 = this.var_2119;
      }
   }
}
