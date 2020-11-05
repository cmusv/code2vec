$filename=$args[0]
if ($filename) {
  echo "Running extract on file: $filename"

  java -cp .\JavaExtractor\JPredict\target\JavaExtractor-0.0.1-SNAPSHOT.jar JavaExtractor.App --max_path_length 8 --max_path_width 2 --file .\raw-data\java-small\test\hadoop\$filename.java > .\extract-test\$filename.java.c2v
} else {
  echo "argument can't be empty"
}


# (elements, Name↑FieldAccess↑Foreach↓Block↓IfStmt↓Block↓Return↓BooleanExpr, true)
