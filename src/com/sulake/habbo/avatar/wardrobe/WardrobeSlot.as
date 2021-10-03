package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class WardrobeSlot implements IOutfit, IAvatarImageListener
   {
       
      
      private var var_28:HabboAvatarEditor;
      
      private var _figure:String;
      
      private var var_1069:String;
      
      private var var_1606:Boolean;
      
      private var _view:IWindowContainer;
      
      private var var_405:IBitmapWrapperWindow;
      
      private var var_2048:int;
      
      private var var_1120:Boolean;
      
      public function WardrobeSlot(param1:HabboAvatarEditor, param2:int, param3:Boolean, param4:String = null, param5:String = null)
      {
         super();
         this.var_28 = param1;
         this.var_2048 = param2;
         this.createView();
         this.update(param4,param5,param3);
      }
      
      public function get id() : int
      {
         return this.var_2048;
      }
      
      public function update(param1:String, param2:String, param3:Boolean) : void
      {
         switch(param2)
         {
            case FigureData.const_92:
            case "m":
            case "M":
               param2 = "null";
               break;
            case FigureData.FEMALE:
            case "f":
            case "F":
               param2 = "null";
         }
         this._figure = param1;
         this.var_1069 = param2;
         this.var_1606 = param3;
         this.updateView();
      }
      
      private function createView() : void
      {
         var _loc1_:XmlAsset = this.var_28.manager.assets.getAssetByName("wardrobe_slot") as XmlAsset;
         if(!_loc1_)
         {
            return;
         }
         this._view = this.var_28.manager.windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
         this._view.procedure = this.eventHandler;
         this._view.visible = false;
         this.var_405 = this._view.findChildByName("image") as IBitmapWrapperWindow;
      }
      
      public function dispose() : void
      {
         this.var_28 = null;
         this._figure = null;
         this.var_1069 = null;
         this.var_405 = null;
         if(this._view)
         {
            this._view.dispose();
            this._view = null;
         }
         this.var_1120 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1120;
      }
      
      public function updateView() : void
      {
         var _loc1_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:Boolean = true;
         if(this._figure && this.var_1606)
         {
            _loc5_ = this.var_28.manager.avatarRenderManager.createAvatarImage(this.figure,AvatarScaleType.const_112,this.var_1069,this);
            if(_loc5_)
            {
               _loc5_.setDirection(AvatarSetType.const_41,parseInt(FigureData.const_878));
               _loc1_ = _loc5_.getCroppedImage(AvatarSetType.const_41);
               _loc5_.dispose();
            }
         }
         else
         {
            _loc6_ = this.var_28.manager.assets.getAssetByName("wardrobe_empty_slot") as BitmapDataAsset;
            if(_loc6_)
            {
               _loc1_ = _loc6_.content as BitmapData;
               _loc2_ = false;
            }
         }
         if(!_loc1_)
         {
            return;
         }
         if(this.var_405)
         {
            if(this.var_405.bitmap)
            {
               this.var_405.bitmap.dispose();
            }
            this.var_405.bitmap = new BitmapData(this.var_405.width,this.var_405.height,true,0);
            _loc7_ = (this.var_405.width - _loc1_.width) / 2;
            _loc8_ = (this.var_405.height - _loc1_.height) / 2;
            this.var_405.bitmap.draw(_loc1_,new Matrix(1,0,0,1,_loc7_,_loc8_));
         }
         if(_loc2_)
         {
            _loc1_.dispose();
         }
         var _loc3_:IContainerButtonWindow = this._view.findChildByName("set_button") as IContainerButtonWindow;
         if(_loc3_)
         {
            _loc3_.visible = this.var_1606;
         }
         var _loc4_:IContainerButtonWindow = this._view.findChildByName("get_button") as IContainerButtonWindow;
         if(_loc4_)
         {
            _loc4_.visible = this.var_1606 && this._figure != null;
         }
      }
      
      private function eventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "set_button":
               this._figure = this.var_28.figureData.getFigureString();
               this.var_1069 = this.var_28.gender;
               this.var_28.handler.saveWardrobeOutfit(this.var_2048,this);
               this.updateView();
               break;
            case "get_button":
               if(this._figure)
               {
                  this.var_28.loadAvatarInEditor(this._figure,this.var_1069,this.var_28.clubMemberLevel);
               }
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get gender() : String
      {
         return this.var_1069;
      }
      
      public function get view() : IWindowContainer
      {
         return this._view;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.updateView();
      }
   }
}
