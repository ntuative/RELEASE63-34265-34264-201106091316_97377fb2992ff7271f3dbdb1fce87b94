package com.sulake.habbo.sound.trax
{
   import com.sulake.core.runtime.IDisposable;
   import flash.utils.ByteArray;
   
   public class TraxSample implements IDisposable
   {
      
      public static const const_1907:String = "sample_44khz";
      
      public static const const_1914:String = "sample_22khz";
      
      public static const const_1870:String = "sample_11khz";
      
      public static const const_1863:String = "sample_16bit";
      
      public static const const_1681:String = "sample_8bit";
      
      public static const SAMPLE_VALUE_MULTIPLIER:Number = 0.000030517578125;
      
      private static const const_1075:int = 32;
      
      private static const const_80:int = 255;
      
      private static const const_198:int = 65535;
      
      private static const const_81:int = 127;
      
      private static const const_197:int = 32767;
       
      
      private var _disposed:Boolean = false;
      
      private var var_126:Vector.<int> = null;
      
      private var _id:int;
      
      private var var_176:int = 2;
      
      private var var_81:int = 1;
      
      private var var_659:Array;
      
      private var var_2675:uint;
      
      public function TraxSample(param1:ByteArray, param2:int, param3:String = "sample_44khz", param4:String = "sample_16bit")
      {
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         this.var_659 = [];
         super();
         this._id = param2;
         var _loc5_:int = 65536;
         switch(param3)
         {
            case const_1914:
               this.var_81 = 2;
               break;
            case const_1870:
               this.var_81 = 4;
               break;
            default:
               this.var_81 = 1;
         }
         switch(param4)
         {
            case const_1681:
               this.var_176 = 4;
               _loc5_ = 256;
               break;
            default:
               this.var_176 = 2;
               _loc5_ = 65536;
         }
         var _loc6_:int = this.var_176 * this.var_81;
         var _loc7_:int = param1.length / 8;
         _loc7_ = int(_loc7_ / _loc6_) * _loc6_;
         this.var_126 = new Vector.<int>(_loc7_ / _loc6_,true);
         var _loc8_:Number = 1 / (Number(_loc5_) / 2);
         param1.position = 0;
         var _loc9_:int = 0;
         var _loc10_:int = _loc7_ / this.var_81;
         var _loc11_:int = 0;
         while(_loc11_ < _loc10_)
         {
            _loc12_ = param1.readFloat();
            param1.readFloat();
            _loc13_ = 2;
            while(_loc13_ <= this.var_81)
            {
               _loc15_ = param1.readFloat();
               param1.readFloat();
               _loc16_ = Number(_loc13_);
               _loc12_ = _loc12_ * (_loc16_ - 1) / _loc16_ + Number(_loc15_) / _loc16_;
               _loc13_++;
            }
            if(_loc11_ >= _loc10_ - 1 - const_1075)
            {
               _loc12_ *= (_loc10_ - _loc11_ - 1) / Number(const_1075);
            }
            _loc14_ = (_loc12_ + 1) / _loc8_;
            if(_loc14_ < 0)
            {
               _loc14_ = 0;
            }
            else if(_loc14_ >= _loc5_)
            {
               _loc14_ = _loc5_ - 1;
            }
            _loc9_ *= _loc5_;
            _loc9_ += _loc14_;
            if(_loc11_ % this.var_176 == this.var_176 - 1)
            {
               this.var_126[int(_loc11_ / this.var_176)] = _loc9_;
               _loc9_ = 0;
            }
            _loc11_++;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get length() : uint
      {
         return this.var_126.length * this.var_176 * this.var_81;
      }
      
      public function get usageCount() : int
      {
         return this.var_659.length;
      }
      
      public function get usageTimeStamp() : int
      {
         return this.var_2675;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_126 = null;
            this.var_659 = null;
         }
      }
      
      public function setSample(param1:Vector.<int>, param2:int, param3:int, param4:int) : int
      {
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = 0;
         if(param1 == null || this.var_126 == null)
         {
            return param4;
         }
         var _loc5_:int = this.var_176 * this.var_81;
         param4 /= _loc5_;
         if(param2 < 0)
         {
            param3 += param2;
            param2 = 0;
         }
         if(param3 > param1.length - param2)
         {
            param3 = param1.length - param2;
         }
         var _loc6_:int = param3 / _loc5_;
         var _loc7_:int = 0;
         if(_loc6_ > this.var_126.length - param4)
         {
            _loc7_ = (_loc6_ - (this.var_126.length - param4)) * _loc5_;
            _loc6_ = this.var_126.length - param4;
            if(_loc7_ > param1.length - param2)
            {
               _loc7_ = param1.length - param2;
            }
         }
         if(this.var_81 == 1)
         {
            if(this.var_176 == 2)
            {
               while(_loc6_-- > 0)
               {
                  _loc8_ = this.var_126[param4++];
                  var _loc11_:*;
                  param1[_loc11_ = param2++] = (_loc8_ >> 16 & const_198) - const_197;
                  var _loc12_:*;
                  param1[_loc12_ = param2++] = (_loc8_ & const_198) - const_197;
               }
            }
            else if(this.var_176 == 4)
            {
               while(_loc6_-- > 0)
               {
                  _loc8_ = this.var_126[param4++];
                  param1[_loc11_ = param2++] = (_loc8_ >> 24 & const_80) - const_81 << 8;
                  param1[_loc12_ = param2++] = (_loc8_ >> 16 & const_80) - const_81 << 8;
                  var _loc13_:*;
                  param1[_loc13_ = param2++] = (_loc8_ >> 8 & const_80) - const_81 << 8;
                  var _loc14_:*;
                  param1[_loc14_ = param2++] = (_loc8_ & const_80) - const_81 << 8;
               }
            }
         }
         else if(this.var_81 >= 2)
         {
            _loc9_ = 0;
            _loc10_ = 0;
            if(this.var_176 == 2)
            {
               while(_loc6_-- > 0)
               {
                  _loc8_ = this.var_126[param4++];
                  _loc10_ = int((_loc8_ >> 16 & const_198) - const_197);
                  _loc9_ = this.var_81;
                  while(_loc9_ > 0)
                  {
                     param1[_loc11_ = param2++] = _loc10_;
                     _loc9_--;
                  }
                  _loc10_ = int((_loc8_ & const_198) - const_197);
                  _loc9_ = this.var_81;
                  while(_loc9_ > 0)
                  {
                     param1[_loc11_ = param2++] = _loc10_;
                     _loc9_--;
                  }
               }
            }
            else if(this.var_176 == 4)
            {
               while(_loc6_-- > 0)
               {
                  _loc8_ = this.var_126[param4++];
                  _loc10_ = (_loc8_ >> 24 & const_80) - const_81 << 8;
                  _loc9_ = this.var_81;
                  while(_loc9_ > 0)
                  {
                     param1[_loc11_ = param2++] = _loc10_;
                     _loc9_--;
                  }
                  _loc10_ = (_loc8_ >> 16 & const_80) - const_81 << 8;
                  _loc9_ = this.var_81;
                  while(_loc9_ > 0)
                  {
                     param1[_loc11_ = param2++] = _loc10_;
                     _loc9_--;
                  }
                  _loc10_ = (_loc8_ >> 8 & const_80) - const_81 << 8;
                  _loc9_ = this.var_81;
                  while(_loc9_ > 0)
                  {
                     param1[_loc11_ = param2++] = _loc10_;
                     _loc9_--;
                  }
                  _loc10_ = (_loc8_ & const_80) - const_81 << 8;
                  _loc9_ = this.var_81;
                  while(_loc9_ > 0)
                  {
                     param1[_loc11_ = param2++] = _loc10_;
                     _loc9_--;
                  }
               }
            }
         }
         while(_loc7_-- > 0)
         {
            param1[_loc11_ = param2++] = 0;
         }
         return param4 * _loc5_;
      }
      
      public function addSample(param1:Vector.<int>, param2:int, param3:int, param4:int) : int
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         if(param1 == null || this.var_126 == null)
         {
            return param4;
         }
         var _loc5_:int = this.var_176 * this.var_81;
         param4 /= _loc5_;
         if(param2 < 0)
         {
            param3 += param2;
            param2 = 0;
         }
         if(param3 > param1.length - param2)
         {
            param3 = param1.length - param2;
         }
         var _loc6_:int = param3 / _loc5_;
         if(_loc6_ > this.var_126.length - param4)
         {
            _loc6_ = this.var_126.length - param4;
         }
         if(this.var_81 == 1)
         {
            if(this.var_176 == 2)
            {
               while(_loc6_-- > 0)
               {
                  _loc7_ = this.var_126[param4++];
                  var _loc10_:*;
                  param1[_loc10_ = param2++] = param1[_loc10_] + ((_loc7_ >> 16 & const_198) - const_197);
                  var _loc11_:*;
                  param1[_loc11_ = param2++] = param1[_loc11_] + ((_loc7_ & const_198) - const_197);
               }
            }
            else if(this.var_176 == 4)
            {
               while(_loc6_-- > 0)
               {
                  _loc7_ = this.var_126[param4++];
                  param1[_loc10_ = param2++] = param1[_loc10_] + ((_loc7_ >> 24 & const_80) - const_81 << 8);
                  param1[_loc11_ = param2++] = param1[_loc11_] + ((_loc7_ >> 16 & const_80) - const_81 << 8);
                  var _loc12_:*;
                  param1[_loc12_ = param2++] = param1[_loc12_] + ((_loc7_ >> 8 & const_80) - const_81 << 8);
                  var _loc13_:*;
                  param1[_loc13_ = param2++] = param1[_loc13_] + ((_loc7_ & const_80) - const_81 << 8);
               }
            }
         }
         else if(this.var_81 >= 2)
         {
            _loc8_ = 0;
            _loc9_ = 0;
            if(this.var_176 == 2)
            {
               while(_loc6_-- > 0)
               {
                  _loc7_ = this.var_126[param4++];
                  _loc9_ = int((_loc7_ >> 16 & const_198) - const_197);
                  _loc8_ = this.var_81;
                  while(_loc8_ > 0)
                  {
                     param1[_loc10_ = param2++] = param1[_loc10_] + _loc9_;
                     _loc8_--;
                  }
                  _loc9_ = int((_loc7_ & const_198) - const_197);
                  _loc8_ = this.var_81;
                  while(_loc8_ > 0)
                  {
                     param1[_loc10_ = param2++] = param1[_loc10_] + _loc9_;
                     _loc8_--;
                  }
               }
            }
            else if(this.var_176 == 4)
            {
               while(_loc6_-- > 0)
               {
                  _loc7_ = this.var_126[param4++];
                  _loc9_ = (_loc7_ >> 24 & const_80) - const_81 << 8;
                  _loc8_ = this.var_81;
                  while(_loc8_ > 0)
                  {
                     param1[_loc10_ = param2++] = param1[_loc10_] + _loc9_;
                     _loc8_--;
                  }
                  _loc9_ = (_loc7_ >> 16 & const_80) - const_81 << 8;
                  _loc8_ = this.var_81;
                  while(_loc8_ > 0)
                  {
                     param1[_loc10_ = param2++] = param1[_loc10_] + _loc9_;
                     _loc8_--;
                  }
                  _loc9_ = (_loc7_ >> 8 & const_80) - const_81 << 8;
                  _loc8_ = this.var_81;
                  while(_loc8_ > 0)
                  {
                     param1[_loc10_ = param2++] = param1[_loc10_] + _loc9_;
                     _loc8_--;
                  }
                  _loc9_ = (_loc7_ & const_80) - const_81 << 8;
                  _loc8_ = this.var_81;
                  while(_loc8_ > 0)
                  {
                     param1[_loc10_ = param2++] = param1[_loc10_] + _loc9_;
                     _loc8_--;
                  }
               }
            }
         }
         return param4 * _loc5_;
      }
      
      public function setUsageFromSong(param1:int, param2:uint) : void
      {
         if(this.var_659 == null)
         {
            return;
         }
         if(this.var_659.indexOf(param1) == -1)
         {
            this.var_659.push(param1);
         }
         this.var_2675 = param2;
      }
      
      public function isUsedFromSong(param1:int) : Boolean
      {
         if(this.var_659 == null)
         {
            return false;
         }
         return this.var_659.indexOf(param1) != -1;
      }
   }
}
