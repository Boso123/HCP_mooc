double MyFunction(int n) {
  double A[n], B[n];
  A[0:n] = B[0:n] = 1.0;
  
  for (int i = 0; i < n-1; i++) {
    A[i] += A[i + 1];
  }
  
  return A[2];
}
