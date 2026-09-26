<h1 align="center">👋 Greeting App - Cubit Task</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" />
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" />
  <img src="https://img.shields.io/badge/BLoC-000000?style=for-the-badge&logo=bloc&logoColor=white" />
</p>

<p align="center">
  تطبيق بسيط ومباشر مبني بـ <b>Flutter</b> يوضح كيفية استخدام الـ <b>Cubit</b> (من مكتبة <code>flutter_bloc</code>) لإدارة الحالة (State Management) بكفاءة واحترافية.
</p>

---

## 📸 الواجهة (Screenshots)
<!-- تأكد من وضع الصورتين داخل مجلد lib/screenshots/ باسم 1.png و 2.png (أو قم بتعديل الأسماء في الكود أدناه لتطابق أسماء صورك) -->
<div align="center">
  <img src="lib/screenshots/1.png" alt="Initial State" width="250"/>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="lib/screenshots/2.png" alt="Greeting State" width="250"/>
</div>

## 🚀 فكرة التطبيق
التطبيق عبارة عن شاشة واحدة تتيح للمستخدم إدخال اسمه لتظهر له رسالة ترحيب مخصصة. 

تم الاعتماد على أساسيات إدارة الحالة باستخدام `Cubit` كالتالي:
- **الحالة الابتدائية (Initial State):** يعرض التطبيق رسالة الترحيب "Hello! 👋" كحالة افتراضية قبل أي إدخال.
- **تحديث الحالة (State Update):** بمجرد كتابة الاسم والضغط على زر "Show Greeting"، يقوم الـ Cubit بعمل `emit` للحالة الجديدة، ويتولى `BlocBuilder` تحديث النص في واجهة المستخدم (UI) فوراً ليعرض "! [Name] Hello 👋".

## 🛠️ التقنيات والأدوات
تم استخدام المكونات التالية لضمان كتابة كود نظيف وقابل للصيانة:
- **Cubit:** للتحكم في منطق العمل (Business Logic) وتحديث حالة الترحيب.
- **BlocProvider:** لتوفير الـ Cubit داخل شجرة الـ Widgets (Widget Tree).
- **BlocBuilder:** لإعادة بناء (Rebuild) الجزء المخصص للنص فقط عند تغير الحالة، مما يحسن الأداء.
- **TextEditingController:** لقراءة النص المُدخل من قبل المستخدم.

## 📁 هيكلة المشروع (Folder Structure)
التقسيمة داخل مجلد `lib` مصممة بشكل منطقي يفصل بين واجهة المستخدم ومنطق العمل:
```text
lib/
├── cubit/
│   └── greeting_cubit.dart    # اللوجيك الخاص بتغيير نص الترحيب
├── screens/
│   └── greeting_screen.dart   # واجهة المستخدم (UI)
├── screenshots/               # صور التطبيق لملف الريدمي
└── main.dart                  # نقطة البداية وتهيئة الـ BlocProvider
