package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2715:String;
      
      private var var_2532:int;
      
      private var var_2717:int;
      
      private var var_2531:String;
      
      private var var_2716:int;
      
      private var var_1818:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2715 = param1.readString();
         this.var_2532 = param1.readInteger();
         this.var_2717 = param1.readInteger();
         this.var_2531 = param1.readString();
         this.var_2716 = param1.readInteger();
         this.var_1818 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2715;
      }
      
      public function get unitPort() : int
      {
         return this.var_2532;
      }
      
      public function get worldId() : int
      {
         return this.var_2717;
      }
      
      public function get castLibs() : String
      {
         return this.var_2531;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2716;
      }
      
      public function get nodeId() : int
      {
         return this.var_1818;
      }
   }
}
