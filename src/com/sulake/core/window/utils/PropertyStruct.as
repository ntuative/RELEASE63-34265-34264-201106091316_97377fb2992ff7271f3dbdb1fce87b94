package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_152:String = "hex";
      
      public static const const_40:String = "int";
      
      public static const const_295:String = "uint";
      
      public static const const_122:String = "Number";
      
      public static const const_37:String = "Boolean";
      
      public static const const_51:String = "String";
      
      public static const const_302:String = "Point";
      
      public static const const_251:String = "Rectangle";
      
      public static const const_166:String = "Array";
      
      public static const const_272:String = "Map";
       
      
      private var var_607:String;
      
      private var var_189:Object;
      
      private var _type:String;
      
      private var var_2295:Boolean;
      
      private var var_3005:Boolean;
      
      private var var_2296:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_607 = param1;
         this.var_189 = param2;
         this._type = param3;
         this.var_2295 = param4;
         this.var_3005 = param3 == const_272 || param3 == const_166 || param3 == const_302 || param3 == const_251;
         this.var_2296 = param5;
      }
      
      public function get key() : String
      {
         return this.var_607;
      }
      
      public function get value() : Object
      {
         return this.var_189;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2295;
      }
      
      public function get range() : Array
      {
         return this.var_2296;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_152:
               return "0x" + uint(this.var_189).toString(16);
            case const_37:
               return Boolean(this.var_189) == true ? "true" : "false";
            case const_302:
               return "Point(" + Point(this.var_189).x + ", " + Point(this.var_189).y + ")";
            case const_251:
               return "Rectangle(" + Rectangle(this.var_189).x + ", " + Rectangle(this.var_189).y + ", " + Rectangle(this.var_189).width + ", " + Rectangle(this.var_189).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_272:
               _loc3_ = this.var_189 as Map;
               _loc1_ = "<var key=\"" + this.var_607 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_166:
               _loc4_ = this.var_189 as Array;
               _loc1_ = "<var key=\"" + this.var_607 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_302:
               _loc5_ = this.var_189 as Point;
               _loc1_ = "<var key=\"" + this.var_607 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_40 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_40 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_251:
               _loc6_ = this.var_189 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_607 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_40 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_40 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_40 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_40 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_152:
               _loc1_ = "<var key=\"" + this.var_607 + "\" value=\"" + "0x" + uint(this.var_189).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_607 + "\" value=\"" + this.var_189 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
