package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2194:int = 0;
      
      public static const const_1943:int = 1;
      
      public static const const_1887:int = 2;
      
      public static const const_2201:int = 3;
      
      public static const const_2208:int = 4;
      
      public static const const_2219:int = 5;
      
      public static const const_1756:int = 10;
      
      public static const const_2045:int = 11;
      
      public static const const_2214:int = 12;
      
      public static const const_2036:int = 13;
      
      public static const const_2071:int = 16;
      
      public static const const_2058:int = 17;
      
      public static const const_2213:int = 18;
      
      public static const const_2200:int = 19;
      
      public static const const_2116:int = 20;
      
      public static const const_2245:int = 22;
      
      public static const const_2191:int = 23;
      
      public static const const_2222:int = 24;
      
      public static const const_2075:int = 25;
      
      public static const const_2221:int = 26;
      
      public static const const_2104:int = 27;
      
      public static const const_2149:int = 28;
      
      public static const const_2150:int = 29;
      
      public static const const_2248:int = 100;
      
      public static const const_2081:int = 101;
      
      public static const const_2129:int = 102;
      
      public static const const_2241:int = 103;
      
      public static const const_2130:int = 104;
      
      public static const const_2198:int = 105;
      
      public static const const_2117:int = 106;
      
      public static const const_2156:int = 107;
      
      public static const const_2187:int = 108;
      
      public static const const_2048:int = 109;
      
      public static const const_2172:int = 110;
      
      public static const const_2168:int = 111;
      
      public static const const_2083:int = 112;
      
      public static const const_2063:int = 113;
      
      public static const const_2105:int = 114;
      
      public static const const_2186:int = 115;
      
      public static const const_2155:int = 116;
      
      public static const const_2041:int = 117;
      
      public static const const_2118:int = 118;
      
      public static const const_2109:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1943:
            case const_1756:
               return "banned";
            case const_1887:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
