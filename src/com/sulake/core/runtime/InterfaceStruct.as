package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1550:IID;
      
      private var var_1974:String;
      
      private var var_118:IUnknown;
      
      private var var_822:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1550 = param1;
         this.var_1974 = getQualifiedClassName(this.var_1550);
         this.var_118 = param2;
         this.var_822 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1550;
      }
      
      public function get iis() : String
      {
         return this.var_1974;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_118;
      }
      
      public function get references() : uint
      {
         return this.var_822;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_118 == null;
      }
      
      public function dispose() : void
      {
         this.var_1550 = null;
         this.var_1974 = null;
         this.var_118 = null;
         this.var_822 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_822;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_822) : uint(0);
      }
   }
}
