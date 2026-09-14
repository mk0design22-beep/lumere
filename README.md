# LUMERE ABAYA — Luxury Abaya Store

تطبيق متجر عبايات نسائي مبني باستخدام Flutter، يعتمد على DummyJSON API لجلب بيانات المنتجات، ويستخدم SharedPreferences لإدارة جلسة المستخدم والمفضلة، مع واجهة عربية RTL، Bottom Navigation، تفاصيل المنتجات، User/Admin flows، وتصميم Luxury Minimal مستوحى من متاجر الأزياء الراقية.

## المتطلبات الأكاديمية

| المتطلب | التنفيذ |
| --- | --- |
| Flutter | نعم |
| DummyJSON API | نعم |
| package:http | نعم |
| SharedPreferences | نعم |
| Sign Up | نعم |
| Validation | نعم |
| Password visibility | نعم |
| Bottom Navigation | نعم |
| ListView.builder | نعم |
| Card | نعم |
| ListTile | نعم |
| Product Details | نعم |
| flutter_launcher_icons | نعم |
| Splash >= 2 sec | نعم |
| User | نعم |
| Admin | نعم |

## تشغيل المشروع

لتشغيل المشروع، يرجى تنفيذ الأمر التالي:

```bash
flutter pub get
flutter run
```

لإعداد أيقونة التطبيق:
```bash
flutter pub run flutter_launcher_icons:main
```

## الملاحظات
- تم اعتماد تصاميم Minimal Luxury.
- استخدام `ListView.builder` متاح في الشاشات المتصلة بالـ API.
- الصلاحيات (Admin/User) تعتمد على LocalStorage لأغراض العرض (Demo) فقط.
