package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_681:QuestsList;
      
      private var _questDetails:QuestDetails;
      
      private var var_682:QuestCompleted;
      
      private var var_394:QuestTracker;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_394 = new QuestTracker(this._questEngine);
         this.var_681 = new QuestsList(this._questEngine);
         this._questDetails = new QuestDetails(this._questEngine);
         this.var_682 = new QuestCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_681.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_681.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_394.onQuest(param1);
         this._questDetails.onQuest(param1);
         this.var_682.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_394.onQuestCompleted(param1);
         this._questDetails.onQuestCompleted(param1);
         this.var_682.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_394.onQuestCancelled();
         this._questDetails.onQuestCancelled();
         this.var_682.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_394.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_681.onRoomExit();
         this.var_394.onRoomExit();
         this._questDetails.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this.var_682.update(param1);
         this.var_394.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_681)
         {
            this.var_681.dispose();
            this.var_681 = null;
         }
         if(this.var_394)
         {
            this.var_394.dispose();
            this.var_394 = null;
         }
         if(this._questDetails)
         {
            this._questDetails.dispose();
            this._questDetails = null;
         }
         if(this.var_682)
         {
            this.var_682.dispose();
            this.var_682 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_681;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this._questDetails;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_394;
      }
   }
}
