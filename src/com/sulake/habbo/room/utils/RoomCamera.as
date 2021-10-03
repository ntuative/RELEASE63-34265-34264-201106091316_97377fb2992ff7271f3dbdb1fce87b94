package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1403:Number = 12;
       
      
      private var var_2260:int = -1;
      
      private var var_2251:int = -2;
      
      private var var_209:Vector3d = null;
      
      private var var_1147:Number = 0;
      
      private var var_1423:Number = 0;
      
      private var var_1715:Boolean = false;
      
      private var var_188:Vector3d = null;
      
      private var var_1712:Vector3d;
      
      private var var_2259:Boolean = false;
      
      private var var_2257:Boolean = false;
      
      private var var_2253:Boolean = false;
      
      private var var_2255:Boolean = false;
      
      private var var_2254:int = 0;
      
      private var var_2258:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2256:int = 0;
      
      private var var_2252:int = 0;
      
      private var var_1713:int = -1;
      
      private var var_1714:int = 0;
      
      private var var_1711:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1712 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_188;
      }
      
      public function get targetId() : int
      {
         return this.var_2260;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2251;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1712;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2259;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2257;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2253;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2255;
      }
      
      public function get screenWd() : int
      {
         return this.var_2254;
      }
      
      public function get screenHt() : int
      {
         return this.var_2258;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2256;
      }
      
      public function get roomHt() : int
      {
         return this.var_2252;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1713;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_209 != null && this.var_188 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2260 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1712.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2251 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2259 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2257 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2253 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2255 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2254 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2258 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1711 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2256 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2252 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1713 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_209 == null)
         {
            this.var_209 = new Vector3d();
         }
         if(this.var_209.x != param1.x || this.var_209.y != param1.y || this.var_209.z != param1.z)
         {
            this.var_209.assign(param1);
            this.var_1714 = 0;
            _loc2_ = Vector3d.dif(this.var_209,this.var_188);
            this.var_1147 = _loc2_.length;
            this.var_1715 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_209 = null;
         this.var_188 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_188 != null)
         {
            return;
         }
         this.var_188 = new Vector3d();
         this.var_188.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_188 == null)
         {
            this.var_188 = new Vector3d();
         }
         this.var_188.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_209 != null && this.var_188 != null)
         {
            ++this.var_1714;
            if(this.var_1711)
            {
               this.var_1711 = false;
               this.var_188 = this.var_209;
               this.var_209 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_209,this.var_188);
            if(_loc3_.length > this.var_1147)
            {
               this.var_1147 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_188 = this.var_209;
               this.var_209 = null;
               this.var_1423 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1147);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1147 / const_1403;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1715)
               {
                  if(_loc7_ < this.var_1423)
                  {
                     _loc7_ = this.var_1423;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1715 = false;
                  }
               }
               this.var_1423 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_188 = Vector3d.sum(this.var_188,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1713 = -1;
      }
   }
}
