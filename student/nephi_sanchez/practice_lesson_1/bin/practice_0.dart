void main(List<String> arguments) {
  //print(double.maxFinite);
  int nephi = 0;
  //print(++nephi); // should print 1
  //print(nephi++); // should print 1
  nephi += 11;
  print(nephi % 4); // ~/=
  print(nephi ~/
      6); // this one does not change the value of nephi, prints the truncated
  print(nephi);
  print(nephi ~/= 6); // will change nephi to truncated result
  print(nephi);
}
