class AppUser {
  final String uid;
  final String email;

  AppUser({required this.uid, required this.email});

  Map<String, dynamic> toJson() {
    return {'uid': uid, 'email': email};
  }

  factory AppUser.fromJson(Map<String, dynamic> jsonUser) {
    return AppUser(uid: jsonUser['uid'], email: jsonUser['email']);
  }
}


// typedef AppUser = ({String uid, String email});

/* 

ลักษณะสำคัญของ Map:

เข้าถึงข้อมูลผ่าน key ไม่ใช่ index

สามารถใช้ key เป็น String, int หรือ Object อื่น ๆ

Map<String, int> ages = {
  'Alice': 25,
  'Bob': 30,
  'Charlie': 28
};

print(ages['Bob']); // 30


List (Array)

List<String> fruits = ['Apple', 'Banana', 'Cherry'];

print(fruits[1]); // Banana

 */

