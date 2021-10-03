package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_611:uint = 0;
      
      public static const const_1942:uint = 1;
      
      public static const const_2133:int = 0;
      
      public static const const_2140:int = 1;
      
      public static const const_2231:int = 2;
      
      public static const const_2074:int = 3;
      
      public static const const_1822:int = 4;
      
      public static const const_432:int = 5;
      
      public static var var_420:IEventQueue;
      
      private static var var_655:IEventProcessor;
      
      private static var var_1940:uint = const_611;
      
      private static var stage:Stage;
      
      private static var var_185:IWindowRenderer;
       
      
      private var var_2632:EventProcessorState;
      
      private var var_2634:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_140:DisplayObjectContainer;
      
      protected var var_3036:Boolean = true;
      
      protected var var_1395:Error;
      
      protected var var_2209:int = -1;
      
      protected var var_1396:IInternalWindowServices;
      
      protected var var_1672:IWindowParser;
      
      protected var var_2986:IWindowFactory;
      
      protected var var_93:IDesktopWindow;
      
      protected var var_1671:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_592:Boolean = false;
      
      private var var_2633:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_185 = param2;
         this._localization = param4;
         this.var_140 = param5;
         this.var_1396 = new ServiceManager(this,param5);
         this.var_2986 = param3;
         this.var_1672 = new WindowParser(this);
         this.var_2634 = param7;
         if(!stage)
         {
            if(this.var_140 is Stage)
            {
               stage = this.var_140 as Stage;
            }
            else if(this.var_140.stage)
            {
               stage = this.var_140.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_93 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_93.limits.maxWidth = param6.width;
         this.var_93.limits.maxHeight = param6.height;
         this.var_140.addChild(this.var_93.getDisplayObject());
         this.var_140.doubleClickEnabled = true;
         this.var_140.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2632 = new EventProcessorState(var_185,this.var_93,this.var_93,null,this.var_2634);
         inputMode = const_611;
         this.var_1671 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1940;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_420)
         {
            if(var_420 is IDisposable)
            {
               IDisposable(var_420).dispose();
            }
         }
         if(var_655)
         {
            if(var_655 is IDisposable)
            {
               IDisposable(var_655).dispose();
            }
         }
         switch(value)
         {
            case const_611:
               var_420 = new MouseEventQueue(stage);
               var_655 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1942:
               var_420 = new TabletEventQueue(stage);
               var_655 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_611;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_140.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_140.removeChild(IGraphicContextHost(this.var_93).getGraphicContext(true) as DisplayObject);
            this.var_93.destroy();
            this.var_93 = null;
            this.var_1671.destroy();
            this.var_1671 = null;
            if(this.var_1396 is IDisposable)
            {
               IDisposable(this.var_1396).dispose();
            }
            this.var_1396 = null;
            this.var_1672.dispose();
            this.var_1672 = null;
            var_185 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1395;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2209;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1395 = param2;
         this.var_2209 = param1;
         if(this.var_3036)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1395 = null;
         this.var_2209 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1396;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1672;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2986;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_93;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_93.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1822,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1671;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_93,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_93)
         {
            this.var_93 = null;
         }
         if(param1.state != WindowState.const_597)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_185.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_592 = true;
         if(this.var_1395)
         {
            throw this.var_1395;
         }
         var_655.process(this.var_2632,var_420);
         this.var_592 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2633 = true;
         var_185.update(param1);
         this.var_2633 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_93 != null && !this.var_93.disposed)
         {
            if(this.var_140 is Stage)
            {
               this.var_93.limits.maxWidth = Stage(this.var_140).stageWidth;
               this.var_93.limits.maxHeight = Stage(this.var_140).stageHeight;
               this.var_93.width = Stage(this.var_140).stageWidth;
               this.var_93.height = Stage(this.var_140).stageHeight;
            }
            else
            {
               this.var_93.limits.maxWidth = this.var_140.width;
               this.var_93.limits.maxHeight = this.var_140.height;
               this.var_93.width = this.var_140.width;
               this.var_93.height = this.var_140.height;
            }
         }
      }
   }
}
