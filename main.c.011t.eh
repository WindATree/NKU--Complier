
;; Function mergeSort (mergeSort, funcdef_no=0, decl_uid=2439, cgraph_uid=1, symbol_order=0)

mergeSort ()
{
  int x;

  x = 0;
  goto <D.2462>;
  <D.2462>:
  return;
}



;; Function main (main, funcdef_no=1, decl_uid=2442, cgraph_uid=2, symbol_order=1)

main ()
{
  int j;
  int i;
  int unusedVariable;
  double cpu_time_used;
  clock_t end;
  clock_t start;
  int c;
  int b;
  int a;
  int count;
  int n;
  int D.2465;

  a = 0;
  b = 1;
  unusedVariable = 42;
  if (b > 10) goto <D.2463>; else goto <D.2464>;
  <D.2463>:
  __builtin_puts (&"b is greater than 10"[0]);
  <D.2464>:
  scanf ("%d", &n);
  scanf ("%d", &count);
  start = clock ();
  i = 0;
  goto <D.2459>;
  <D.2458>:
  j = 0;
  goto <D.2456>;
  <D.2455>:
  c = a + b;
  a = b;
  b = c;
  j = j + 1;
  <D.2456>:
  n.0_1 = n;
  if (j < n.0_1) goto <D.2455>; else goto <D.2457>;
  <D.2457>:
  i = i + 1;
  <D.2459>:
  count.1_2 = count;
  if (i < count.1_2) goto <D.2458>; else goto <D.2460>;
  <D.2460>:
  end = clock ();
  _3 = end - start;
  _4 = (double) _3;
  cpu_time_used = _4 / 1.0e+6;
  D.2465 = 0;
  goto <D.2467>;
  <D.2467>:
  n = {CLOBBER};
  count = {CLOBBER};
  goto <D.2466>;
  D.2465 = 0;
  goto <D.2466>;
  <D.2466>:
  return D.2465;
}

