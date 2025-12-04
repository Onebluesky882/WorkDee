/* 
abstract class คืออะไร?

เป็น class ที่ไม่สามารถสร้าง instance โดยตรง

ใช้สำหรับ กำหนดโครงสร้าง / blueprint ให้ subclass

มักใช้ร่วมกับ method ที่ abstract (ไม่มี implementation)

ช่วยบังคับ subclass ให้ implement method เหล่านั้น

abstract class Animal {
  void makeSound(); // abstract method ไม่มี body

  void breathe() {
    print("Breathing...");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

void main() {
   Animal a = Animal(); ❌ ไม่สามารถสร้าง instance ของ abstract class
  Dog dog = Dog();
  dog.makeSound(); // Woof!
  dog.breathe();   // Breathing...
}

 */

import 'package:flutter_projects/auth/domain/entities/app_user.dart';

abstract class AuthRepo {
  Future<AppUser?> loginWithEmailPassword(String email, String password);
  Future<AppUser?> registerWithEmailPassword(String email, String password);
  Future<AppUser?> getCurrentUser();
  Future<String> sendPasswordResetEmail(String email);
  Future<void> logout();
  Future<void> deleteAccount();
}
