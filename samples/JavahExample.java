public class JavahExample {
   static {
      System.loadLibrary("example");
   }

   private native void crystalLog();

   public static void main(String[] args) {
      new JavahExample().crystalLog();
   }
}
