package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1407:int = 80;
       
      
      private var var_512:Map;
      
      private var var_922:String = "";
      
      private var var_1424:Array;
      
      public function UserRegistry()
      {
         this.var_512 = new Map();
         this.var_1424 = new Array();
         super();
      }
      
      public function getRegistry() : Map
      {
         return this.var_512;
      }
      
      public function registerRoom(param1:String) : void
      {
         this.var_922 = param1;
         if(this.var_922 != "")
         {
            this.addRoomNameForMissing();
         }
      }
      
      public function unregisterRoom() : void
      {
         this.var_922 = "";
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(this.var_512.getValue(param1) != null)
         {
            this.var_512.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,this.var_922);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && this.var_922 == "")
         {
            this.var_1424.push(param1);
         }
         this.var_512.add(param1,_loc4_);
         this.purgeUserIndex();
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(this.var_512.length > const_1407)
         {
            _loc1_ = this.var_512.getKey(0);
            this.var_512.remove(_loc1_);
         }
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(this.var_1424.length > 0)
         {
            _loc1_ = this.var_512.getValue(this.var_1424.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = this.var_922;
            }
         }
      }
   }
}
