String processSequence({
  required String sequence,
  String Function(String)? process,
}) {
  if (process != null) {
    final _processed = process.call(sequence);
    return "PROCESSED=$_processed";
  }
  return sequence;
}

/// Scans the DNA sequence for the pattern "CCGAC" and changes it to "GAGTCG"
/// to change the pigment from green to red.
String changePigmentFromGreenToRed(String sequence) {
  return removeFmt(sequence).replaceAll("CCGAC", "*GAGTCG*");
}

/// Scans the DNA sequence for the pattern "AAACT" and changes it to "GGAGGGTCA"
/// to improve the Temp resilience.
String changeTempResilience(String sequence) {
  return removeFmt(sequence).replaceAll("AAACT", "*GGAGGGTCA*");
}

String removeFmt(String sequence) {
  return sequence.replaceAll("*", "").replaceAll("PROCESSED=", "");
}

bool isProcessed(String sequence) {
  return sequence.startsWith("PROCESSED=");
}

void main() {
  final _raw = "ACCTGGTCCTAAACTAAGTCCATCCGAC";
  print("Is processed: ${isProcessed(_raw)}");
  final _changedToRedPigment = processSequence(
    sequence: _raw,
    process: changePigmentFromGreenToRed,
  );
  print("To red: $_changedToRedPigment");
  print("Is processed: ${isProcessed(_changedToRedPigment)}");

  final _changedTempResilience = processSequence(
    sequence: _changedToRedPigment,
    process: changeTempResilience,
  );

  print("Inc temp resilience: $_changedTempResilience");

  // Using anonymous functions:
  final _changedCovidResilience = processSequence(
    sequence: _changedTempResilience,
    process: (__sequence) {
      return removeFmt(__sequence).replaceAll("ACCT", "*ACCC*");
    },
  );

  print("Inc Covid resilience: $_changedCovidResilience");
}
