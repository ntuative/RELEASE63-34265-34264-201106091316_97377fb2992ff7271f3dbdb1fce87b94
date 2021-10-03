package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.StartCampaignMessageComposer;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class QuestTracker implements IDisposable
   {
      
      private static const const_313:int = 0;
      
      private static const const_1123:int = 1;
      
      private static const const_1115:int = 2;
      
      private static const const_1113:int = 3;
      
      private static const const_1121:int = 4;
      
      private static const const_1120:int = 5;
      
      private static const const_1116:int = 6;
      
      private static const const_1650:int = 72;
      
      private static const const_1652:int = 4;
      
      private static const const_1119:Array = [-2,-3,-2,0,2,3,2,0,2,1,0,1];
      
      private static const const_1122:Array = [1,1,2,2,3,3,4,4,5,5,6,6,4];
      
      private static const const_1118:int = 6;
      
      private static const const_1655:int = 4;
      
      private static const const_705:int = 2;
      
      private static const const_1117:int = 200;
      
      private static const const_312:Array = ["a","b","c","d"];
      
      private static const const_1114:int = 10000;
      
      private static const const_1651:int = 0;
      
      private static const const_704:int = -1;
      
      private static const const_1648:Point = new Point(10,87);
      
      private static const const_1653:int = 162;
      
      private static const const_1649:Number = 0.01;
      
      private static const const_1654:Number = 100;
      
      private static const const_1656:int = 1000;
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_228:QuestMessageData;
      
      private var _window:IWindowContainer;
      
      private var var_583:Timer;
      
      private var var_887:ProgressBar;
      
      private var var_335:int = 0;
      
      private var var_1098:int = 0;
      
      private var var_1650:int = 0;
      
      private var var_1366:int = -1;
      
      private var var_886:int = -1;
      
      private var var_1097:int = -1;
      
      private var var_1365:int;
      
      private var var_1649:int;
      
      private var var_2938:Boolean;
      
      public function QuestTracker(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         this.var_228 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_583)
         {
            this.var_583.stop();
            this.var_583 = null;
         }
         if(this.var_887)
         {
            this.var_887.dispose();
            this.var_887 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         if(this._window)
         {
            this.clearPrompt();
            this.var_228 = param1;
            this.var_1098 = 0;
            this.refreshTrackerDetails();
            this.var_1366 = 0;
            this.var_335 = const_1113;
         }
      }
      
      public function onQuestCancelled() : void
      {
         this.var_228 = null;
         if(this._window)
         {
            this.clearPrompt();
            this.var_887.refresh(0,100,-1);
            this.var_335 = const_1115;
         }
      }
      
      public function onRoomEnter() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Boolean = Boolean(parseInt(this._questEngine.configuration.getKey("new.identity","0")));
         var _loc2_:String = this.method_3();
         if(this.var_583 == null && _loc1_ && _loc2_ != "")
         {
            _loc3_ = int(this._questEngine.configuration.getKey("questing.startQuestDelayInSeconds","30"));
            this.var_583 = new Timer(_loc3_ * 1000,1);
            this.var_583.addEventListener(TimerEvent.TIMER,this.onStartQuestTimer);
            this.var_583.start();
            Logger.log("Initialized start quest timer with period: " + _loc3_);
         }
      }
      
      public function onRoomExit() : void
      {
         if(this._window != null && this._window.visible)
         {
            this._window.findChildByName("more_info_txt").visible = false;
            this._window.findChildByName("more_info_region").visible = false;
         }
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         var _loc2_:Boolean = this._window && this._window.visible;
         this.var_228 = param1;
         this.prepareTrackerWindow();
         this.refreshTrackerDetails();
         this.refreshPromptFrames();
         this.hideSuccessFrames();
         if(_loc2_)
         {
            this.setupPrompt(this.var_886,const_1655,false);
         }
         else
         {
            this._window.x = this._window.desktop.width;
            this.var_335 = const_1123;
            this.setupPrompt(const_1651,const_705,false);
         }
         this._window.visible = true;
         this._questEngine.notifications.setQuestTrackerVisible(true);
      }
      
      private function refreshPromptFrames() : void
      {
         if(!this._questEngine.isQuestWithPrompts(this.var_228))
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < const_312.length)
         {
            this._questEngine.setupPromptFrameImage(this._window,this.var_228,const_312[_loc1_]);
            _loc1_++;
         }
      }
      
      private function prepareTrackerWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._questEngine.getXmlWindow("QuestTracker"));
         this._window.y = const_1650;
         this._window.findChildByName("more_info_region").procedure = this.onMoreInfo;
         new PendingImage(this._questEngine,this._window.findChildByName("quest_tracker_bg"),"quest_tracker_with_bar");
         var _loc1_:int = 1;
         while(_loc1_ <= const_1118)
         {
            new PendingImage(this._questEngine,this.getSuccessFrame(_loc1_),"checkanim" + _loc1_);
            _loc1_++;
         }
         this.hideSuccessFrames();
         this.var_887 = new ProgressBar(this._questEngine,IWindowContainer(this._window.findChildByName("content_cont")),const_1653,"quests.tracker.progress",false,const_1648);
      }
      
      private function hideSuccessFrames() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= const_1118)
         {
            this.getSuccessFrame(_loc1_).visible = false;
            _loc1_++;
         }
      }
      
      private function hidePromptFrames() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < const_312.length)
         {
            this.getPromptFrame(const_312[_loc1_]).visible = false;
            _loc1_++;
         }
      }
      
      private function getSuccessFrame(param1:int) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("success_pic_" + param1));
      }
      
      private function getPromptFrame(param1:String) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("prompt_pic_" + param1));
      }
      
      private function refreshTrackerDetails() : void
      {
         this._questEngine.localization.registerParameter("quests.tracker.caption","quest_name",this._questEngine.getQuestName(this.var_228));
         this._window.findChildByName("desc_txt").caption = this._questEngine.getQuestDesc(this.var_228);
         this._window.findChildByName("more_info_txt").visible = true;
         this._window.findChildByName("more_info_region").visible = true;
         var _loc1_:int = Math.round(100 * this.var_228.completedSteps / this.var_228.totalSteps);
         this.var_887.refresh(_loc1_,100,this.var_228.id);
         this._questEngine.setupQuestImage(this._window,this.var_228);
      }
      
      private function onMoreInfo(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this._questEngine.questController.questDetails.showDetails(this.var_228);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._window == null)
         {
            return;
         }
         this.var_887.updateView();
         switch(this.var_335)
         {
            case const_1123:
               _loc2_ = this.getDefaultLocationX();
               _loc3_ = this._window.x - _loc2_;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(_loc3_ * param1 * const_1649));
                  this._window.x -= _loc4_;
               }
               else
               {
                  this.var_335 = const_313;
                  this._window.x = _loc2_;
               }
               break;
            case const_1115:
               _loc2_ = this._window.desktop.width;
               _loc3_ = _loc2_ - this._window.x;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(param1 * const_1654 / _loc3_));
                  this._window.x += _loc4_;
               }
               else
               {
                  this.var_335 = const_313;
                  this._window.x = _loc2_;
                  this._window.visible = false;
                  this._questEngine.notifications.setQuestTrackerVisible(false);
               }
               break;
            case const_1113:
               this.hideSuccessFrames();
               this.getSuccessFrame(const_1122[this.var_1366]).visible = true;
               ++this.var_1366;
               if(this.var_1366 >= const_1122.length)
               {
                  this.var_335 = const_1120;
                  this.var_1650 = const_1656;
               }
               break;
            case const_1116:
               this.setQuestImageVisible(false);
               this.hidePromptFrames();
               this.var_1365 -= param1;
               this.getPromptFrame(const_312[this.var_1097]).visible = true;
               if(this.var_1365 < 0)
               {
                  this.var_1365 = const_1117;
                  ++this.var_1097;
                  if(this.var_1097 >= const_312.length)
                  {
                     this.var_1097 = 0;
                     --this.var_1649;
                     if(this.var_1649 < 1)
                     {
                        this.setupPrompt(const_1114,const_705,true);
                        this.var_335 = const_313;
                     }
                  }
               }
               break;
            case const_1121:
               if(this.var_1098 >= -1)
               {
                  this._window.x = this.getDefaultLocationX();
                  this.var_335 = const_313;
                  this.setupPrompt(const_1114,const_705,false);
               }
               else
               {
                  this._window.x = this.getDefaultLocationX() + const_1119[this.var_1098];
                  ++this.var_1098;
               }
               break;
            case const_1120:
               this.var_1650 -= param1;
               if(this.var_1650 < 0)
               {
                  this.var_335 = const_313;
                  this._window.visible = false;
               }
               break;
            case const_313:
               if(this.var_886 != const_704)
               {
                  this.var_886 -= param1;
                  if(this.var_886 < 0)
                  {
                     this.var_886 = const_704;
                     if(this.var_228 != null && this._questEngine.isQuestWithPrompts(this.var_228))
                     {
                        if(this.var_2938)
                        {
                           this.startNudge();
                        }
                        else
                        {
                           this.var_335 = const_1116;
                           this.var_1097 = 0;
                           this.var_1365 = const_1117;
                        }
                     }
                  }
               }
         }
      }
      
      private function getDefaultLocationX() : int
      {
         return this._window.desktop.width - this._window.width - const_1652;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      private function onStartQuestTimer(param1:TimerEvent) : void
      {
         if(this.hasBlockingWindow())
         {
            Logger.log("Quest start blocked. Waiting some more");
            this.var_583.reset();
            this.var_583.start();
         }
         else
         {
            this._questEngine.questController.questDetails.openForNextQuest = this._questEngine.configuration.getKey("questing.showDetailsForNextQuest") == "true";
            this._questEngine.send(new StartCampaignMessageComposer(this.method_3(),this._questEngine.configuration.getBoolean("questing.useWing",false)));
         }
      }
      
      private function method_3() : String
      {
         var _loc1_:String = this._questEngine.configuration.getKey("questing.defaultCampaign");
         return _loc1_ == null ? "" : _loc1_;
      }
      
      private function hasBlockingWindow() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ <= 2)
         {
            _loc2_ = this._questEngine.windowManager.getDesktop(_loc1_);
            if(_loc2_ != null && this.hasBlockingWindowInLayer(_loc2_))
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      private function hasBlockingWindowInLayer(param1:IWindowContainer) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ != null && _loc3_.visible)
            {
               if(_loc3_ as IFrameWindow != null)
               {
                  if(_loc3_.name != "mod_start_panel")
                  {
                     return true;
                  }
               }
               else if(_loc3_.name == "welcome_screen")
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      private function setQuestImageVisible(param1:Boolean) : void
      {
         this._window.findChildByName("quest_pic_bitmap").visible = param1;
      }
      
      private function clearPrompt() : void
      {
         this.setupPrompt(const_704,0,false);
      }
      
      private function setupPrompt(param1:int, param2:int, param3:Boolean) : void
      {
         this.setQuestImageVisible(true);
         this.hidePromptFrames();
         this.var_886 = param1;
         this.var_1649 = param2;
         this.var_2938 = param3;
      }
      
      private function startNudge() : void
      {
         this.var_1098 = 0;
         this.var_335 = const_1121;
      }
   }
}
