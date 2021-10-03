package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_439:RoomObjectLocationCacheItem = null;
      
      private var var_213:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_439 = new RoomObjectLocationCacheItem(param1);
         this.var_213 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_439;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_213;
      }
      
      public function dispose() : void
      {
         if(this.var_439 != null)
         {
            this.var_439.dispose();
            this.var_439 = null;
         }
         if(this.var_213 != null)
         {
            this.var_213.dispose();
            this.var_213 = null;
         }
      }
   }
}
