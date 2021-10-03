package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1069:int;
      
      private var var_790:Boolean;
      
      private var var_2087:Boolean;
      
      private var _figure:String;
      
      private var var_1432:int;
      
      private var var_2046:String;
      
      private var var_1868:String;
      
      private var var_1866:String;
      
      private var var_2850:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1069 = param1.readInteger();
         this.var_790 = param1.readBoolean();
         this.var_2087 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1432 = param1.readInteger();
         this.var_2046 = param1.readString();
         this.var_1868 = param1.readString();
         this.var_1866 = param1.readString();
         this.var_2850 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1069;
      }
      
      public function get online() : Boolean
      {
         return this.var_790;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_2087;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1432;
      }
      
      public function get motto() : String
      {
         return this.var_2046;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1868;
      }
      
      public function get realName() : String
      {
         return this.var_1866;
      }
      
      public function get facebookId() : String
      {
         return this.var_2850;
      }
   }
}
