public class JavahExample {
   static {
      System.loadLibrary("example");
   }

   private native void crystalLog();
   private native void crystalLoggingFoundJavaClass();
   private native void crystalLogsEnvironment();

   public static void main(String[] args) {
      JavahExample clazz = new JavahExample();
      clazz.crystalLog();
      clazz.crystalLogsEnvironment();
      //clazz.crystalLoggingFoundJavaClass();
   }
}
