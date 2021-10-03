package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3002:uint;
      
      private var var_164:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_723:IWindowContext;
      
      private var var_1134:IMouseDraggingService;
      
      private var var_1136:IMouseScalingService;
      
      private var var_1138:IMouseListenerService;
      
      private var var_1137:IFocusManagerService;
      
      private var var_1139:IToolTipAgentService;
      
      private var var_1135:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3002 = 0;
         this.var_164 = param2;
         this.var_723 = param1;
         this.var_1134 = new WindowMouseDragger(param2);
         this.var_1136 = new WindowMouseScaler(param2);
         this.var_1138 = new WindowMouseListener(param2);
         this.var_1137 = new FocusManager(param2);
         this.var_1139 = new WindowToolTipAgent(param2);
         this.var_1135 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1134 != null)
         {
            this.var_1134.dispose();
            this.var_1134 = null;
         }
         if(this.var_1136 != null)
         {
            this.var_1136.dispose();
            this.var_1136 = null;
         }
         if(this.var_1138 != null)
         {
            this.var_1138.dispose();
            this.var_1138 = null;
         }
         if(this.var_1137 != null)
         {
            this.var_1137.dispose();
            this.var_1137 = null;
         }
         if(this.var_1139 != null)
         {
            this.var_1139.dispose();
            this.var_1139 = null;
         }
         if(this.var_1135 != null)
         {
            this.var_1135.dispose();
            this.var_1135 = null;
         }
         this.var_164 = null;
         this.var_723 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1134;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1136;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1138;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1137;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1139;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1135;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
