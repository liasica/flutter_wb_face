######################云 ocr 混淆规则 ocr-BEGIN###########################
-keepattributes InnerClasses
-keep public class com.tencent.cloud.huiyansdkocr.net.*$*{
  *;
}
-keep public class com.tencent.cloud.huiyansdkocr.net.*{
  *;
}
-keep public class com.tencent.fujikoli.recdetectdemo.Jni.ScanRecNative{*;}
#######################云 ocr 混淆规则 ocr-END#############################

#######################normal混淆规则-BEGIN#############################
#不混淆内部类
-keepattributes InnerClasses
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes Exceptions

-keep public class com.tencent.cloud.huiyansdkface.normal.net.*$*{
  *;
}
-keep public class com.tencent.cloud.huiyansdkface.normal.net.*{
  *;
}
-keep public class com.tencent.cloud.huiyansdkface.normal.thread.*{
 *;
}
-keep public class com.tencent.cloud.huiyansdkface.normal.tools.*{
 *;
}
-keep public class com.tencent.cloud.huiyansdkface.normal.thread.*$*{
 *;
}
-keep public class com.tencent.cloud.huiyansdkface.normal.tools.secure.*{
 *;
}
-keep public class com.tencent.cloud.huiyansdkface.normal.tools.WLogger{
  *;
}
-keep class com.tencent.bugly.idasc.**{
  *;
}

#wehttp混淆规则
-dontwarn com.tencent.cloud.huiyansdkface.okio.**
-keep class com.tencent.cloud.huiyansdkface.okio.**{
  *;
}

# 里面 有 Java8的一些类 如 Duration
-dontwarn com.tencent.cloud.huiyansdkface.okhttp3.OkHttpClient$Builder
-keep class com.tencent.cloud.huiyansdkface.wehttp2.**{
  public <methods>;
}
-keep class com.tencent.cloud.huiyansdkface.okhttp3.**{
  public <methods>;
}
-keep interface com.tencent.cloud.huiyansdkface.wehttp2.**{
  public <methods>;
}
-keep public class com.tencent.cloud.huiyansdkface.wehttp2.WeLog$Level{
  *;
}
-keep class com.tencent.cloud.huiyansdkface.wejson.*{
  *;
}
-keep public class com.tencent.cloud.huiyansdkface.wehttp2.WeReq$ErrType{
  *;
}
-keep class * extends com.tencent.cloud.huiyansdkface.wehttp2.WeReq$WeCallback{
 public <methods>;
}
-keep class com.tencent.cloud.huiyansdkface.okio.**{
  *;
}
#######################normal混淆规则-END#############################