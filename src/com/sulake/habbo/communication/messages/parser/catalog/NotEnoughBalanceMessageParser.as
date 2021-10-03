package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1998:int = 0;
      
      private var var_1997:int = 0;
      
      private var var_1854:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1998;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1997;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1854;
      }
      
      public function flush() : Boolean
      {
         this.var_1998 = 0;
         this.var_1997 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1998 = param1.readInteger();
         this.var_1997 = param1.readInteger();
         this.var_1854 = param1.readInteger();
         return true;
      }
   }
}
