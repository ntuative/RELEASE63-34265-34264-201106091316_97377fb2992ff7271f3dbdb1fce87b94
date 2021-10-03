package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2287:String;
      
      private var var_2285:String;
      
      private var var_455:BitmapDataAsset;
      
      private var var_1585:Boolean;
      
      private var var_1584:Boolean;
      
      private var var_2286:Boolean;
      
      private var _offsetX:int;
      
      private var var_1264:int;
      
      private var var_262:int;
      
      private var _height:int;
      
      private var var_757:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2287 = param1;
         this.var_2285 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_455 = _loc9_;
            this.var_757 = false;
         }
         else
         {
            this.var_455 = null;
            this.var_757 = true;
         }
         this.var_1585 = param4;
         this.var_1584 = param5;
         this._offsetX = param6;
         this.var_1264 = param7;
         this.var_2286 = param8;
      }
      
      public function dispose() : void
      {
         this.var_455 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_757 && this.var_455 != null)
         {
            _loc1_ = this.var_455.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_262 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_757 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1584;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1585;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_262;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2287;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2285;
      }
      
      public function get asset() : IAsset
      {
         return this.var_455;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2286;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1585)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1584)
         {
            return this.var_1264;
         }
         return -(this.height + this.var_1264);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1264;
      }
   }
}
