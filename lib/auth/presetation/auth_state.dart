/* 

Auth state

 */

// สร้างโครง ไว้ ถ้าถึงไปใช้ ต้องตาม โครตสร้างที่กำหนด
abstract class AuthState {}

// initial
class AuthInitial extends AuthState {}

// loading
class AuthLoading extends AuthState {}

// authenticated
class Authenticated extends AuthState {}

class Unauthenticated extends AuthState {}

// error..
class AuthError extends AuthState {}
