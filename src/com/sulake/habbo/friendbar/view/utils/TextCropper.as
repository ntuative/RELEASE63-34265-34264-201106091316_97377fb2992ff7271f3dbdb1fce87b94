package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.ITextWindow;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class TextCropper implements IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_570:TextField;
      
      private var var_1044:TextFormat;
      
      private var var_3028:String = "...";
      
      private var var_3027:int = 20;
      
      public function TextCropper()
      {
         super();
         this.var_570 = new TextField();
         this.var_570.autoSize = TextFieldAutoSize.LEFT;
         this.var_1044 = this.var_570.defaultTextFormat;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_570 = null;
            this._disposed = true;
         }
      }
      
      public function crop(param1:ITextWindow) : void
      {
         var _loc3_:int = 0;
         this.var_1044.font = param1.fontFace;
         this.var_1044.size = param1.fontSize;
         this.var_1044.bold = param1.bold;
         this.var_1044.italic = param1.italic;
         this.var_570.setTextFormat(this.var_1044);
         this.var_570.text = param1.getLineText(0);
         var _loc2_:int = this.var_570.textWidth;
         if(_loc2_ > param1.width)
         {
            _loc3_ = this.var_570.getCharIndexAtPoint(param1.width - this.var_3027,this.var_570.textHeight / 2);
            param1.text = param1.text.slice(0,_loc3_) + this.var_3028;
         }
      }
   }
}
