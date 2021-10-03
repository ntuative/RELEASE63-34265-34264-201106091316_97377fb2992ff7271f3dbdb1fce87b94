package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_363:int;
      
      private var var_2309:int;
      
      private var var_2581:Boolean;
      
      private var var_2303:int;
      
      private var _ownerName:String;
      
      private var var_123:RoomData;
      
      private var var_866:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_363 = param1.readInteger();
         this.var_2309 = param1.readInteger();
         this.var_2581 = param1.readBoolean();
         this.var_2303 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_123 = new RoomData(param1);
         this.var_866 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_123 != null)
         {
            this.var_123.dispose();
            this.var_123 = null;
         }
         if(this.var_866 != null)
         {
            this.var_866.dispose();
            this.var_866 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_363;
      }
      
      public function get userCount() : int
      {
         return this.var_2309;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2581;
      }
      
      public function get ownerId() : int
      {
         return this.var_2303;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_123;
      }
      
      public function get event() : RoomData
      {
         return this.var_866;
      }
   }
}
