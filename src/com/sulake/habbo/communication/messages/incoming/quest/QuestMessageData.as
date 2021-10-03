package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1777:String;
      
      private var var_1776:int;
      
      private var var_1778:int;
      
      private var var_1854:int;
      
      private var _id:int;
      
      private var var_1774:Boolean;
      
      private var _type:String;
      
      private var var_1775:String;
      
      private var var_1773:int;
      
      private var _localizationCode:String;
      
      private var var_2371:int;
      
      private var var_2372:int;
      
      private var var_2373:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1777 = param1.readString();
         this.var_1776 = param1.readInteger();
         this.var_1778 = param1.readInteger();
         this.var_1854 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1774 = param1.readBoolean();
         this._type = param1.readString();
         this.var_1775 = param1.readString();
         this.var_1773 = param1.readInteger();
         this._localizationCode = param1.readString();
         this.var_2371 = param1.readInteger();
         this.var_2372 = param1.readInteger();
         this.var_2373 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_1775 = "";
         this.var_1773 = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1777;
      }
      
      public function get localizationCode() : String
      {
         return this._localizationCode;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_1776;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_1778;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1854;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1774;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_1775;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1773;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2371;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2372;
      }
      
      public function get waitPeriodSeconds() : int
      {
         return this.var_2373;
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1777;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this._localizationCode;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1774 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_1776 >= this.var_1778;
      }
   }
}
