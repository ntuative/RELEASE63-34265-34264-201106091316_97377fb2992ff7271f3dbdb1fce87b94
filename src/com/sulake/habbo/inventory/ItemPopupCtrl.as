package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1141:int = 1;
      
      public static const const_509:int = 2;
      
      private static const const_1022:int = 5;
      
      private static const const_1399:int = 250;
      
      private static const const_1400:int = 100;
      
      private static const const_1402:int = 180;
      
      private static const const_1401:int = 200;
       
      
      private var var_359:Timer;
      
      private var var_358:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_88:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_1708:int = 2;
      
      private var var_743:BitmapData;
      
      private var var_921:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_359 = new Timer(const_1399,1);
         this.var_358 = new Timer(const_1400,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_88 = param1;
         this.var_88.visible = false;
         this._assets = param2;
         this.var_359.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_358.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_921 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_743 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_359 != null)
         {
            this.var_359.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_359.stop();
            this.var_359 = null;
         }
         if(this.var_358 != null)
         {
            this.var_358.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_358.stop();
            this.var_358 = null;
         }
         this._assets = null;
         this.var_88 = null;
         this._parent = null;
         this.var_743 = null;
         this.var_921 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_88 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_88);
         }
         this._parent = param1;
         this.var_1708 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_88.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_88.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1402,param3.width),Math.min(const_1401,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_88.width - _loc6_.width) / 2;
            this.var_88.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_358.reset();
         this.var_359.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_88.visible = true;
         this._parent.addChild(this.var_88);
         this.refreshArrow(this.var_1708);
         switch(this.var_1708)
         {
            case const_1141:
               this.var_88.x = -1 * this.var_88.width - const_1022;
               break;
            case const_509:
               this.var_88.x = this._parent.width + const_1022;
         }
         this.var_88.y = (this._parent.height - this.var_88.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_88.visible = false;
         this.var_358.reset();
         this.var_359.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_88);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_358.reset();
         this.var_359.reset();
         this.var_359.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_358.reset();
         this.var_359.reset();
         this.var_358.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_88 == null || this.var_88.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_88.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1141:
               _loc2_.bitmap = this.var_921.clone();
               _loc2_.width = this.var_921.width;
               _loc2_.height = this.var_921.height;
               _loc2_.y = (this.var_88.height - this.var_921.height) / 2;
               _loc2_.x = this.var_88.width - 1;
               break;
            case const_509:
               _loc2_.bitmap = this.var_743.clone();
               _loc2_.width = this.var_743.width;
               _loc2_.height = this.var_743.height;
               _loc2_.y = (this.var_88.height - this.var_743.height) / 2;
               _loc2_.x = -1 * this.var_743.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
