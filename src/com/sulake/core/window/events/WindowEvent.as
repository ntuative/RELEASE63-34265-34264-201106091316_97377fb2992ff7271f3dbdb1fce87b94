package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1769:String = "WE_DESTROY";
      
      public static const const_325:String = "WE_DESTROYED";
      
      public static const const_1970:String = "WE_OPEN";
      
      public static const const_1751:String = "WE_OPENED";
      
      public static const const_1742:String = "WE_CLOSE";
      
      public static const const_1951:String = "WE_CLOSED";
      
      public static const const_1934:String = "WE_FOCUS";
      
      public static const const_372:String = "WE_FOCUSED";
      
      public static const const_1921:String = "WE_UNFOCUS";
      
      public static const const_1846:String = "WE_UNFOCUSED";
      
      public static const const_1904:String = "WE_ACTIVATE";
      
      public static const const_560:String = "WE_ACTIVATED";
      
      public static const const_1948:String = "WE_DEACTIVATE";
      
      public static const const_557:String = "WE_DEACTIVATED";
      
      public static const const_357:String = "WE_SELECT";
      
      public static const const_49:String = "WE_SELECTED";
      
      public static const const_532:String = "WE_UNSELECT";
      
      public static const const_518:String = "WE_UNSELECTED";
      
      public static const const_1732:String = "WE_LOCK";
      
      public static const const_1843:String = "WE_LOCKED";
      
      public static const const_1877:String = "WE_UNLOCK";
      
      public static const const_1868:String = "WE_UNLOCKED";
      
      public static const const_936:String = "WE_ENABLE";
      
      public static const const_246:String = "WE_ENABLED";
      
      public static const const_720:String = "WE_DISABLE";
      
      public static const const_287:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_436:String = "WE_RELOCATED";
      
      public static const const_1189:String = "WE_RESIZE";
      
      public static const const_39:String = "WE_RESIZED";
      
      public static const const_1755:String = "WE_MINIMIZE";
      
      public static const const_1844:String = "WE_MINIMIZED";
      
      public static const const_1928:String = "WE_MAXIMIZE";
      
      public static const const_1737:String = "WE_MAXIMIZED";
      
      public static const const_1785:String = "WE_RESTORE";
      
      public static const const_1925:String = "WE_RESTORED";
      
      public static const const_558:String = "WE_CHILD_ADDED";
      
      public static const const_394:String = "WE_CHILD_REMOVED";
      
      public static const const_227:String = "WE_CHILD_RELOCATED";
      
      public static const const_183:String = "WE_CHILD_RESIZED";
      
      public static const const_371:String = "WE_CHILD_ACTIVATED";
      
      public static const const_487:String = "WE_PARENT_ADDED";
      
      public static const const_1744:String = "WE_PARENT_REMOVED";
      
      public static const const_1845:String = "WE_PARENT_RELOCATED";
      
      public static const const_917:String = "WE_PARENT_RESIZED";
      
      public static const const_1134:String = "WE_PARENT_ACTIVATED";
      
      public static const const_194:String = "WE_OK";
      
      public static const const_627:String = "WE_CANCEL";
      
      public static const const_110:String = "WE_CHANGE";
      
      public static const const_574:String = "WE_SCROLL";
      
      public static const const_116:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_726:IWindow;
      
      protected var var_1119:Boolean;
      
      protected var var_495:Boolean;
      
      protected var var_506:Boolean;
      
      protected var var_727:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_726 = param3;
         _loc5_.var_495 = param4;
         _loc5_.var_506 = false;
         _loc5_.var_727 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_726;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_495;
      }
      
      public function recycle() : void
      {
         if(this.var_506)
         {
            throw new Error("Event already recycled!");
         }
         this.var_726 = null;
         this._window = null;
         this.var_506 = true;
         this.var_1119 = false;
         this.var_727.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1119;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1119 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1119;
      }
      
      public function stopPropagation() : void
      {
         this.var_1119 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1119 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_495 + " window: " + this._window + " }";
      }
   }
}
