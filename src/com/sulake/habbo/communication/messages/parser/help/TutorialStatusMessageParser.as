package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1379:Boolean;
      
      private var var_1378:Boolean;
      
      private var var_1664:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1379;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1378;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1664;
      }
      
      public function flush() : Boolean
      {
         this.var_1379 = false;
         this.var_1378 = false;
         this.var_1664 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1379 = param1.readBoolean();
         this.var_1378 = param1.readBoolean();
         this.var_1664 = param1.readBoolean();
         return true;
      }
   }
}
