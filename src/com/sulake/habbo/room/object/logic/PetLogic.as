package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.events.RoomObjectMoveEvent;
   import com.sulake.habbo.room.messages.RoomObjectAvatarChatUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarExperienceUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarFigureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarPetGestureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarPostureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSelectedMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSleepUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class PetLogic extends MovingObjectLogic
   {
       
      
      private var var_1453:int = 0;
      
      private var var_1451:int = 0;
      
      private var var_1197:int = 0;
      
      private var _selected:Boolean = false;
      
      private var var_529:Vector3d = null;
      
      private var var_2694:Boolean = false;
      
      private var var_1969:int = 0;
      
      private var var_1968:int = 0;
      
      private var var_1017:int = 0;
      
      public function PetLogic()
      {
         super();
      }
      
      override public function getEventTypes() : Array
      {
         var _loc1_:Array = [RoomObjectMouseEvent.const_167,RoomObjectMoveEvent.const_437];
         return getAllEventTypes(super.getEventTypes(),_loc1_);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._selected && object != null)
         {
            if(eventDispatcher != null)
            {
               _loc1_ = new RoomObjectMoveEvent(RoomObjectMoveEvent.const_746,object.getId(),object.getType());
               eventDispatcher.dispatchEvent(_loc1_);
            }
         }
         super.dispose();
         this.var_529 = null;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         if(param1 == null || object == null)
         {
            return;
         }
         var _loc2_:IRoomObjectModelController = object.getModelController();
         if(!this.var_2694)
         {
            super.processUpdateMessage(param1);
            if(param1 is RoomObjectAvatarPostureUpdateMessage)
            {
               _loc3_ = param1 as RoomObjectAvatarPostureUpdateMessage;
               _loc2_.setString(RoomObjectVariableEnum.const_286,_loc3_.postureType);
               return;
            }
            if(param1 is RoomObjectAvatarUpdateMessage)
            {
               _loc4_ = param1 as RoomObjectAvatarUpdateMessage;
               _loc2_.setNumber(RoomObjectVariableEnum.const_217,_loc4_.dirHead);
               return;
            }
            if(param1 is RoomObjectAvatarChatUpdateMessage)
            {
               _loc5_ = param1 as RoomObjectAvatarChatUpdateMessage;
               _loc2_.setNumber(RoomObjectVariableEnum.const_185,1);
               this.var_1453 = getTimer() + _loc5_.numberOfWords * 1000;
               return;
            }
            if(param1 is RoomObjectAvatarPetGestureUpdateMessage)
            {
               _loc6_ = param1 as RoomObjectAvatarPetGestureUpdateMessage;
               _loc2_.setString(RoomObjectVariableEnum.const_173,_loc6_.gesture);
               this.var_1451 = getTimer() + 3000;
               return;
            }
            if(param1 is RoomObjectAvatarSleepUpdateMessage)
            {
               _loc7_ = param1 as RoomObjectAvatarSleepUpdateMessage;
               _loc2_.setNumber(RoomObjectVariableEnum.const_269,Number(_loc7_.isSleeping));
               return;
            }
         }
         if(param1 is RoomObjectAvatarSelectedMessage)
         {
            _loc8_ = param1 as RoomObjectAvatarSelectedMessage;
            this._selected = _loc8_.selected;
            this.var_529 = null;
            return;
         }
         if(param1 is RoomObjectAvatarExperienceUpdateMessage)
         {
            _loc9_ = param1 as RoomObjectAvatarExperienceUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.AVATAR_EXPERIENCE_TIMESTAMP,Number(getTimer()));
            _loc2_.setNumber(RoomObjectVariableEnum.const_404,Number(_loc9_.gainedExperience));
            return;
         }
         if(param1 is RoomObjectAvatarFigureUpdateMessage)
         {
            _loc10_ = param1 as RoomObjectAvatarFigureUpdateMessage;
            _loc11_ = _loc2_.getString(RoomObjectVariableEnum.const_204);
            _loc2_.setString(RoomObjectVariableEnum.const_204,_loc10_.figure);
            _loc2_.setString(RoomObjectVariableEnum.const_1927,_loc10_.race);
            _loc2_.setNumber(RoomObjectVariableEnum.const_964,this.getPaletteIndex(_loc10_.figure));
            return;
         }
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(object == null || param1 == null)
         {
            return;
         }
         var _loc3_:IRoomObjectModelController = object.getModelController();
         switch(param1.type)
         {
            case MouseEvent.CLICK:
               _loc6_ = object.getId();
               _loc7_ = object.getType();
               if(eventDispatcher != null)
               {
                  _loc8_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_167,param1.eventId,_loc6_,_loc7_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc8_);
               }
               if(this.var_2694)
               {
                  this.debugMouseEvent(param1);
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
         }
      }
      
      private function debugMouseEvent(param1:RoomSpriteMouseEvent) : void
      {
         var _loc3_:int = 0;
         var _loc2_:IRoomObjectModelController = object.getModelController();
         if(!param1.altKey && !param1.ctrlKey)
         {
            _loc3_ = object.getDirection().x;
            _loc3_ = (_loc3_ + 45) % 360;
            object.setDirection(new Vector3d(_loc3_));
            _loc2_.setNumber(RoomObjectVariableEnum.const_217,_loc3_ + this.var_1017);
         }
         else if(param1.altKey && !param1.ctrlKey)
         {
            ++this.var_1969;
            _loc2_.setNumber(RoomObjectVariableEnum.const_286,this.var_1969);
            _loc2_.setNumber(RoomObjectVariableEnum.const_173,NaN);
         }
         else if(param1.ctrlKey && !param1.altKey)
         {
            ++this.var_1968;
            _loc2_.setNumber(RoomObjectVariableEnum.const_173,this.var_1968);
         }
         else
         {
            this.var_1017 += 45;
            if(this.var_1017 > 45)
            {
               this.var_1017 = -45;
            }
            _loc3_ = object.getDirection().x;
            _loc2_.setNumber(RoomObjectVariableEnum.const_217,_loc3_ + this.var_1017);
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.update(param1);
         if(this._selected && object != null)
         {
            if(eventDispatcher != null)
            {
               _loc2_ = object.getLocation();
               if(this.var_529 == null || this.var_529.x != _loc2_.x || this.var_529.y != _loc2_.y || this.var_529.z != _loc2_.z)
               {
                  if(this.var_529 == null)
                  {
                     this.var_529 = new Vector3d();
                  }
                  this.var_529.assign(_loc2_);
                  _loc3_ = new RoomObjectMoveEvent(RoomObjectMoveEvent.const_437,object.getId(),object.getType());
                  eventDispatcher.dispatchEvent(_loc3_);
               }
            }
         }
         if(object != null && object.getModelController() != null)
         {
            this.updateActions(param1,object.getModelController());
         }
      }
      
      private function updateActions(param1:int, param2:IRoomObjectModelController) : void
      {
         if(this.var_1451 > 0 && param1 > this.var_1451)
         {
            param2.setString(RoomObjectVariableEnum.const_173,null);
            this.var_1451 = 0;
         }
         if(this.var_1453 > 0)
         {
            if(param1 > this.var_1453)
            {
               param2.setNumber(RoomObjectVariableEnum.const_185,0);
               this.var_1453 = 0;
            }
         }
         if(this.var_1197 > 0 && param1 > this.var_1197)
         {
            param2.setNumber(RoomObjectVariableEnum.const_294,0);
            this.var_1197 = 0;
         }
      }
      
      private function getPaletteIndex(param1:String) : int
      {
         var _loc2_:* = null;
         if(param1 != null)
         {
            _loc2_ = param1.split(" ");
            if(_loc2_.length >= 2)
            {
               return parseInt(_loc2_[1]);
            }
         }
         return 0;
      }
   }
}
