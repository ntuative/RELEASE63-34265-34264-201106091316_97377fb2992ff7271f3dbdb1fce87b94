package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1813:IID;
      
      private var var_1120:Boolean;
      
      private var var_1211:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1813 = param1;
         this.var_1211 = new Array();
         this.var_1120 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1813;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1120;
      }
      
      public function get receivers() : Array
      {
         return this.var_1211;
      }
      
      public function dispose() : void
      {
         if(!this.var_1120)
         {
            this.var_1120 = true;
            this.var_1813 = null;
            while(this.var_1211.length > 0)
            {
               this.var_1211.pop();
            }
            this.var_1211 = null;
         }
      }
   }
}
