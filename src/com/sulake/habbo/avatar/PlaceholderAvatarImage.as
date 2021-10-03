package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_777:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1120)
         {
            _structure = null;
            _assets = null;
            var_279 = null;
            var_303 = null;
            _figure = null;
            var_590 = null;
            var_349 = null;
            if(!var_1387 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_806 = null;
            var_1120 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_777[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_777[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_456:
               switch(_loc3_)
               {
                  case AvatarAction.const_868:
                  case AvatarAction.const_617:
                  case AvatarAction.const_383:
                  case AvatarAction.const_902:
                  case AvatarAction.const_427:
                  case AvatarAction.const_798:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_341:
            case AvatarAction.const_169:
            case AvatarAction.const_309:
            case AvatarAction.const_882:
            case AvatarAction.const_836:
            case AvatarAction.const_739:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
