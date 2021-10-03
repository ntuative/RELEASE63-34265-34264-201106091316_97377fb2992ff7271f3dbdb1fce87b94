package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1742:int;
      
      private var _currentPosition:int;
      
      private var var_1744:int;
      
      private var var_1743:int;
      
      private var var_1741:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1742;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1744;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1743;
      }
      
      public function get syncCount() : int
      {
         return this.var_1741;
      }
      
      public function flush() : Boolean
      {
         this.var_1742 = -1;
         this._currentPosition = -1;
         this.var_1744 = -1;
         this.var_1743 = -1;
         this.var_1741 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1742 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1744 = param1.readInteger();
         this.var_1743 = param1.readInteger();
         this.var_1741 = param1.readInteger();
         return true;
      }
   }
}
