import java.io.File;
import com.cburch.logisim.file.Loader;
import com.cburch.logisim.file.LogisimFile;
import com.cburch.logisim.proj.Project;
import com.cburch.logisim.circuit.TestVectorEvaluator;
import com.cburch.logisim.circuit.CircuitState;
import com.cburch.logisim.data.TestVector;

public class ValidateLogisim {
  public static void main(String[] args) throws Exception {
    Loader loader = new Loader(null) {
      @Override public void showError(String msg) { System.err.println(msg); }
    };
    LogisimFile file = loader.openLogisimFile(new File(args[0]));
    Project project = new Project(file);
    TestVector vector = new TestVector(new File(args[1]));
    // The first row establishes inputs before a stored value exists.
    if (args.length > 2 && args[2].equals("initial-unknown")) {
      var field = TestVector.class.getDeclaredField("dontCareFlags");
      field.setAccessible(true);
      @SuppressWarnings("unchecked")
      var flags = (java.util.List<boolean[]>) field.get(vector);
      for (int i = 0; i < vector.columnName.length; i++) {
        if (vector.columnName[i].equals("Q") || vector.columnName[i].equals("Qbar")) flags.get(0)[i] = true;
      }
    }
    CircuitState state = CircuitState.createRootState(project, file.getMainCircuit(), Thread.currentThread());
    TestVectorEvaluator evaluator = new TestVectorEvaluator(state, vector);
    evaluator.setAllowReset(false);
    int[] result = evaluator.evaluate((line, reports) -> { if (!reports.isEmpty()) System.out.println("Line " + line + ": " + reports); });
    System.out.println("RESULT: " + java.util.Arrays.toString(result));
    System.exit(result[1] == 0 ? 0 : 1);
  }
}
