package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_151:String = "RSPE_VOTE_QUESTION";
      
      public static const const_146:String = "RSPE_VOTE_RESULT";
       
      
      private var var_1210:String = "";
      
      private var var_1426:Array;
      
      private var var_1323:Array;
      
      private var var_2008:int = 0;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         this.var_1426 = [];
         this.var_1323 = [];
         super(param1,param2,param7,param8);
         this.var_1210 = param3;
         this.var_1426 = param4;
         this.var_1323 = param5;
         if(this.var_1323 == null)
         {
            this.var_1323 = [];
         }
         this.var_2008 = param6;
      }
      
      public function get question() : String
      {
         return this.var_1210;
      }
      
      public function get choices() : Array
      {
         return this.var_1426.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1323.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2008;
      }
   }
}
