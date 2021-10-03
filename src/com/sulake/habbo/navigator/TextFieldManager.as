package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_85:ITextFieldWindow;
      
      private var var_721:Boolean;
      
      private var var_1504:String = "";
      
      private var var_2143:int;
      
      private var var_2144:Function;
      
      private var var_2956:String = "";
      
      private var var_159:IWindowContainer;
      
      private var var_2955:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2957:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_85 = param2;
         this.var_2143 = param3;
         this.var_2144 = param4;
         if(param5 != null)
         {
            this.var_721 = true;
            this.var_1504 = param5;
            this.var_85.text = param5;
         }
         Util.setProcDirectly(this.var_85,this.onInputClick);
         this.var_85.addEventListener(WindowKeyboardEvent.const_229,this.checkEnterPress);
         this.var_85.addEventListener(WindowEvent.const_110,this.checkMaxLen);
         this.var_2955 = this.var_85.textBackground;
         this._orgTextBackgroundColor = this.var_85.textBackgroundColor;
         this.var_2957 = this.var_85.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_85.textBackground = this.var_2955;
         this.var_85.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_85.textColor = this.var_2957;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_85.textBackground = true;
         this.var_85.textBackgroundColor = 4294021019;
         this.var_85.textColor = 4278190080;
         if(this.var_159 == null)
         {
            this.var_159 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_159,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_85.parent).addChild(this.var_159);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_159.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_159.findChildByName("border").width = _loc2_.width + 15;
         this.var_159.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_85.getLocalPosition(_loc3_);
         this.var_159.x = _loc3_.x;
         this.var_159.y = _loc3_.y - this.var_159.height + 3;
         var _loc4_:IWindow = this.var_159.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_159.width / 2 - _loc4_.width / 2;
         this.var_159.x += (this.var_85.width - this.var_159.width) / 2;
         this.var_159.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1504 != null)
         {
            this.var_85.text = this.var_1504;
            this.var_721 = true;
         }
         else
         {
            this.var_85.text = "";
            this.var_721 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_721)
         {
            return this.var_2956;
         }
         return this.var_85.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_721 = false;
         this.var_85.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_159 != null)
         {
            this.var_159.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_85;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_721 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_372)
         {
            return;
         }
         if(!this.var_721)
         {
            return;
         }
         this.var_85.text = this.var_2956;
         this.var_721 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:WindowKeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER)
         {
            if(this.var_2144 != null)
            {
               this.var_2144();
            }
         }
      }
      
      private function checkMaxLen(param1:WindowEvent) : void
      {
         var _loc2_:String = this.var_85.text;
         if(_loc2_.length > this.var_2143)
         {
            this.var_85.text = _loc2_.substring(0,this.var_2143);
         }
      }
   }
}
