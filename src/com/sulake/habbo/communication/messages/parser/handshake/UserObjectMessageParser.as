package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_984:String;
      
      private var var_2882:String;
      
      private var var_1866:String;
      
      private var var_2885:int;
      
      private var var_2884:String;
      
      private var var_2886:int;
      
      private var var_2883:int;
      
      private var var_2691:int;
      
      private var var_1203:int;
      
      private var var_771:int;
      
      private var var_2397:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_984 = param1.readString();
         this.var_2882 = param1.readString();
         this.var_1866 = param1.readString();
         this.var_2885 = param1.readInteger();
         this.var_2884 = param1.readString();
         this.var_2886 = param1.readInteger();
         this.var_2883 = param1.readInteger();
         this.var_2691 = param1.readInteger();
         this.var_1203 = param1.readInteger();
         this.var_771 = param1.readInteger();
         this.var_2397 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_984;
      }
      
      public function get customData() : String
      {
         return this.var_2882;
      }
      
      public function get realName() : String
      {
         return this.var_1866;
      }
      
      public function get tickets() : int
      {
         return this.var_2885;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2884;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2886;
      }
      
      public function get directMail() : int
      {
         return this.var_2883;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2691;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1203;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_771;
      }
      
      public function get identityId() : int
      {
         return this.var_2397;
      }
   }
}
