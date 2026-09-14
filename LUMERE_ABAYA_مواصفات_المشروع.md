LUMERE ABAYA — مواصفات مشروع Flutter احترافي

> **اسم التطبيق:** LUMERE ABAYA  
> **نوع التطبيق:** متجر عبايات نسائي فاخر  
> **التقنية:** Flutter + Dart  
> **الهدف:** تحويل متطلبات مشروع مادة تطبيقات الموبايل إلى تطبيق متجر عبايات أنيق، مع الالتزام الصريح بمتطلبات المادة، وتجهيز وصف تنفيذي يمكن إعطاؤه لأداة برمجة بالذكاء الاصطناعي مثل Cursor / Claude Code / Codex / أي Flutter Coding Agent.

────────

1. المرجع الأكاديمي للمشروع

المتطلبات المرفقة تشترط أن يكون المشروع تطبيق Flutter متكاملاً بواجهة احترافية، وأن يجلب البيانات من API، مع اختيار خدمة من DummyJSON، ومنع البيانات الثابتة داخل الكود. كما تشترط شاشة تسجيل، استخدام SharedPreferences فعلياً، Bottom Navigation بثلاث صفحات على الأقل، package:http، ListView.builder، Card وListTile، صفحة تفاصيل، تغيير أيقونة التطبيق باستخدام flutter_launcher_icons، وSplash Screen لا تقل عن ثانيتين. fileciteturn0file0L2-L16

تفاصيل التسجيل المطلوبة تشمل اسم المستخدم والبريد الإلكتروني وكلمة المرور وتأكيدها، مع إظهار/إخفاء كلمة المرور، Validation، وزر التسجيل. fileciteturn0file0L19-L30

ويجب أن يُستخدم SharedPreferences بصورة فعلية لحفظ حالة تسجيل الدخول واسم المستخدم، واستعادة الجلسة بعد إعادة تشغيل التطبيق، مع إمكانية تسجيل الخروج وحذف البيانات المحفوظة. fileciteturn0file0L32-L38

كما يجب استخدام Bottom Navigation لثلاث صفحات على الأقل، واستخدام package:http وDummyJSON لجلب البيانات. fileciteturn0file0L40-L50

ويجب عرض البيانات بواسطة ListView.builder فقط، وعرض العناصر القادمة من API داخل Card يحتوي صورة وعنواناً ووصفاً/معلومات وأيقونة مناسبة، ثم فتح صفحة تفاصيل عند الضغط على العنصر. fileciteturn0file0L51-L70

وأخيراً يجب استخدام flutter_launcher_icons لأيقونة التطبيق، وSplash Screen احترافية مدتها لا تقل عن ثانيتين، ثم التوجيه إلى Home إذا كان المستخدم مسجلاً أو Sign Up إذا لم يكن مسجلاً. fileciteturn0file0L72-L84

────────

2. الفكرة الإبداعية

LUMERE ABAYA

تطبيق متجر عبايات بطابع فاخر Minimal Luxury.

الفكرة البصرية:

• خلفية Ivory / Warm White.
• أسود فحمي للنصوص.
• لمسات ذهبية هادئة.
• صور عبايات كبيرة وواضحة.
• زوايا ناعمة.
• مساحات بيضاء واسعة.
• Typography أنيق.
• Micro-interactions بسيطة.
• واجهة عربية RTL بالكامل.
• دعم الإنجليزية اختيارياً من خلال بنية قابلة للتوسع.

الهوية

LUMERE تعكس:

• الضوء.
• الأناقة.
• الهدوء.
• الفخامة.
• البساطة.

الشعار المقترح

LUMERE

وتحته:

ABAYA • MODEST • ELEGANT

أو بالعربية:

لومير للعبايات

────────

3. الهدف من التطبيق

التطبيق يعرض منتجات العبايات بطريقة متجر حقيقية، مع المحافظة على متطلبات المشروع الأكاديمية.

التجربة الأساسية:

1. Splash Screen.
2. التحقق من جلسة المستخدم.
3. تسجيل مستخدم جديد.
4. الدخول إلى المتجر.
5. استعراض المنتجات القادمة من API.
6. البحث والتصفية.
7. فتح تفاصيل المنتج.
8. إضافة المنتج للمفضلة.
9. مشاهدة المفضلة.
10. مشاهدة الملف الشخصي.
11. تسجيل الخروج.
12. وجود واجهة Admin منفصلة لإدارة تجربة المتجر.

────────

4. ملاحظة مهمة حول DummyJSON

المتطلبات الأكاديمية تشترط DummyJSON وعدم استخدام بيانات ثابتة داخل الكود.

لذلك يجب أن تكون قائمة المنتجات الأساسية قادمة من DummyJSON.

لا تقم ببناء قائمة عبايات ثابتة داخل Dart مثل:

```dart
final products = [
  ...
];
```

بدلاً من ذلك استخدم API.

الأنسب للمشروع:

```text
https://dummyjson.com/products
```

مع إمكانية استخدام:

```text
https://dummyjson.com/products/category/{category}
```

وواجهات البحث/التصفية المتاحة من DummyJSON حسب الحاجة.

تحويل فكرة المنتجات إلى متجر عبايات

لأن DummyJSON خدمة تجريبية عامة، قد لا تكون كل المنتجات عبايات حقيقية.

يجب بناء طبقة Mapping / Presentation تجعل المنتج المعروض يحمل لغة متجر LUMERE قدر الإمكان من دون تزوير البيانات القادمة من API.

مثلاً:

• title → اسم المنتج.
• description → وصف المنتج.
• price → السعر.
• thumbnail → صورة المنتج.
• images → صور التفاصيل.
• category → تصنيف المنتج.
• rating → التقييم.
• stock → المخزون.

إذا كانت بيانات API لا توفر حقولاً خاصة بالعباية مثل المقاس أو اللون، فلا تضف بيانات مزيفة على أنها قادمة من API.

يمكن إضافة خصائص واجهة محلية فقط عندما تكون مطلوبة كتجربة UI، مع توضيح أنها إعدادات محلية وليست بيانات API.

────────

5. المستخدمون والأدوار

التطبيق يحتوي على دورين:

User

المستخدم العادي يستطيع:

• التسجيل.
• الدخول للتطبيق.
• تصفح المنتجات.
• البحث.
• فتح التفاصيل.
• إضافة/إزالة المفضلة.
• مشاهدة الملف الشخصي.
• تسجيل الخروج.

Admin

الـ Admin يحصل على:

• Dashboard.
• إحصائيات.
• مشاهدة المنتجات.
• البحث في المنتجات.
• فتح تفاصيل أي منتج.
• أدوات إدارة واجهة المتجر.
• إدارة العناصر المحلية الخاصة بالمفضلة/الحالة المحلية إن كان ذلك ضمن نطاق المشروع.
• تسجيل الخروج.

ملاحظة تقنية مهمة

DummyJSON ليس Backend حقيقياً لمتجر LUMERE، لذلك لا تدّعِ أن التطبيق يحتوي نظام تجارة إلكترونية Server-Side حقيقياً.

المشروع الأكاديمي هنا هو:

Flutter Frontend + DummyJSON API + SharedPreferences Local Persistence

وأي وظائف Admin إضافية يجب أن تُنفذ بطريقة مناسبة لحدود المشروع، دون اختلاق Backend غير موجود.

────────

6. Architecture المقترحة

استخدم Architecture نظيفة ومنظمة:

```text
lib/
│
├── main.dart
│
├── app/
│   ├── app.dart
│   ├── routes.dart
│   └── theme.dart
│
├── core/
│   ├── constants/
│   │   ├── api_constants.dart
│   │   ├── app_constants.dart
│   │   └── storage_keys.dart
│   │
│   ├── network/
│   │   └── api_client.dart
│   │
│   ├── storage/
│   │   └── local_storage.dart
│   │
│   ├── errors/
│   │   └── app_exception.dart
│   │
│   └── widgets/
│       ├── app_button.dart
│       ├── app_text_field.dart
│       ├── product_card.dart
│       ├── loading_view.dart
│       ├── error_view.dart
│       └── empty_view.dart
│
├── features/
│   │
│   ├── splash/
│   │   └── splash_screen.dart
│   │
│   ├── auth/
│   │   ├── models/
│   │   │   └── local_user.dart
│   │   ├── screens/
│   │   │   └── sign_up_screen.dart
│   │   └── services/
│   │       └── auth_service.dart
│   │
│   ├── home/
│   │   ├── models/
│   │   │   └── product.dart
│   │   ├── services/
│   │   │   └── product_service.dart
│   │   ├── screens/
│   │   │   └── home_screen.dart
│   │   └── widgets/
│   │       ├── hero_header.dart
│   │       ├── category_chip.dart
│   │       └── product_list.dart
│   │
│   ├── product_details/
│   │   └── product_details_screen.dart
│   │
│   ├── favorites/
│   │   └── favorites_screen.dart
│   │
│   ├── profile/
│   │   └── profile_screen.dart
│   │
│   └── admin/
│       ├── admin_dashboard.dart
│       ├── admin_products.dart
│       └── admin_profile.dart
│
└── navigation/
    └── main_navigation.dart
```

────────

7. Packages المطلوبة

الحد الأدنى:

```yaml
dependencies:
  flutter:
    sdk: flutter

  http:
  shared_preferences:

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_launcher_icons:
```

يمكن إضافة مكتبات UI مساعدة فقط عند الحاجة، لكن لا تجعل كثرة المكتبات تخفي المتطلبات الأساسية للمادة.

────────

8. Splash Screen

التصميم

صفحة افتتاحية فاخرة:

```text
          L
      LUMERE
        ABAYA

   MODEST • ELEGANT
```

مع Animation بسيط:

• Fade In للشعار.
• حركة بسيطة للـ subtitle.
• مدة لا تقل عن 2 ثانية.

السلوك

عند فتح التطبيق:

```text
Splash
   ↓
قراءة SharedPreferences
   ↓
هل المستخدم مسجل؟
   ├── نعم → Home
   └── لا  → Sign Up
```

لا تجعل Splash مجرد صورة؛ يجب أن يؤدي وظيفة حقيقية في تدفق التطبيق.

────────

9. Sign Up Screen

العناصر

• Logo.
• Welcome message.
• Username.
• Email.
• Password.
• Confirm Password.
• Toggle لإظهار/إخفاء Password.
• Toggle لإظهار/إخفاء Confirm Password.
• Validation.
• زر Create Account.

النصوص المقترحة

العنوان:

Create your LUMERE account

بالعربية:

أنشئي حسابك في لومير

الوصف:

Discover elegance, one abaya at a time.

────────

10. Validation

Username

• مطلوب.
• لا يقبل قيمة فارغة.
• طول مناسب.

Email

• مطلوب.
• يجب أن يكون Email صحيحاً.

مثال:

```text
name@example.com
```

Password

• مطلوب.
• حد أدنى مناسب.
• لا يعرض النص بشكل افتراضي.

Confirm Password

يجب أن يطابق Password.

رسائل الأخطاء تكون واضحة بالعربية.

مثلاً:

```text
البريد الإلكتروني غير صحيح
كلمة المرور مطلوبة
كلمتا المرور غير متطابقتين
اسم المستخدم مطلوب
```

────────

11. SharedPreferences

يجب استخدام SharedPreferences فعلياً، وليس فقط إضافة المكتبة.

المفاتيح المقترحة:

```text
isLoggedIn
username
email
role
favorites
```

عند التسجيل

احفظ:

```text
isLoggedIn = true
username = ...
email = ...
role = user
```

عند إعادة فتح التطبيق

اقرأ:

```text
isLoggedIn
```

ثم وجه المستخدم حسب حالته.

Logout

عند تسجيل الخروج:

• حذف session.
• حذف البيانات المطلوبة للجلسة.
• إعادة المستخدم إلى Sign Up.

يمكن الإبقاء على المفضلة إذا كان تصميم المشروع يقرر ذلك، أو حذفها مع الجلسة. يجب توثيق القرار.

────────

12. Bottom Navigation

يجب أن يحتوي التطبيق على 3 صفحات على الأقل.

التصميم المقترح:

```text
Home       Favorites       Profile
⌂             ♡               ♙
```

صفحات User:

1. Home.
2. Favorites.
3. Profile.

صفحات Admin:

1. Dashboard.
2. Products.
3. Profile.

────────

13. Home Screen

Header

مثلاً:

```text
مرحباً، Sarah
اكتشفي أناقتك اليوم

                         ♡
```

Hero Section

بطاقة كبيرة:

```text
THE LUMERE EDIT

Elegance is never loud.
```

مع صورة منتج من API.

Search

حقل:

```text
ابحثي عن عبايتك...
```

Categories

Chips مثل:

```text
الكل
عبايات
أزياء
إطلالات
الأعلى تقييماً
```

ملاحظة: إذا كانت التصنيفات مأخوذة من API، اعرضها من البيانات الفعلية. لا تنشئ منتجات ثابتة لإكمال الواجهة.

────────

14. Product List

هذا الجزء مهم جداً للمادة.

يجب استخدام:

```dart
ListView.builder
```

وليس:

```dart
ListView(...)
```

ولا تبنِ العناصر يدوياً.

كل عنصر يأتي من API.

────────

15. Product Card

كل Product داخل:

```text
Card
  └── ListTile / تصميم ListTile مخصص
```

ويحتوي على:

• صورة.
• عنوان.
• وصف أو معلومات.
• السعر.
• Rating.
• أيقونة Favorite.
• سهم/أيقونة للدخول إلى التفاصيل.

مثال بصري:

```text
┌─────────────────────────────────┐
│  [ PRODUCT IMAGE ]        ♡     │
│                                 │
│  Elegant Abaya                  │
│  A refined everyday silhouette  │
│                                 │
│  $89.99             ★ 4.7   ›   │
└─────────────────────────────────┘
```

────────

16. Product Details

عند الضغط على Card:

```text
Home
 ↓
Product Details
```

الصفحة الجديدة يجب أن تعرض:

• زر Back.
• صورة كبيرة.
• إمكانية عرض أكثر من صورة إذا وفرها API.
• الاسم.
• السعر.
• الوصف.
• Rating.
• Stock.
• Category.
• أي معلومات متاحة من API.
• Favorite button.

المهم: اعرض جميع التفاصيل التي يوفرها العنصر القادم من API.

────────

17. Favorites

صفحة:

```text
Your Favorites
```

تعرض المنتجات التي اختار المستخدم حفظها.

لأن المشروع يعتمد على SharedPreferences، يمكن حفظ معرفات المنتجات المفضلة محلياً.

مثال:

```text
favorites = [1, 4, 8]
```

ثم إعادة جلب المنتجات من API عند الحاجة.

لا تخزن قائمة منتجات كاملة ثابتة داخل الكود.

────────

18. Profile

تعرض:

```text
LUMERE

Username
Email

Account
────────────
My Favorites

Settings
────────────
Theme
Language

Security
────────────
Log out
```

المعلومات الأساسية تأتي من SharedPreferences.

────────

19. Admin Dashboard

الشكل

واجهة فاخرة لكن عملية:

```text
Good evening, Admin

Store Overview

┌────────────┐ ┌────────────┐
│ Products   │ │ Favorites  │
│    API     │ │   Local    │
└────────────┘ └────────────┘

Recent Products
────────────────
Product
Product
Product
```

وظائف Admin المقترحة

• مشاهدة عدد المنتجات القادمة من API.
• مشاهدة المنتجات.
• البحث.
• فتح التفاصيل.
• مراقبة المخزون الموجود في بيانات API.
• عرض Rating.
• إدارة الحالة المحلية الخاصة بالتطبيق إذا كان ذلك مطلوباً.

لا تدّعِ وجود CRUD حقيقي على DummyJSON إلا إذا تم استخدام Endpoint يدعمه المشروع فعلياً، ولا توهم المستخدم بأن البيانات تم حفظها على Server إذا كان التنفيذ محلياً.

────────

20. Admin Route Guard

التطبيق يجب ألا يسمح للمستخدم العادي بالوصول إلى Admin Dashboard.

فكرة بسيطة:

```text
role == admin
```

يتم حفظ الدور في SharedPreferences عند إنشاء/تهيئة جلسة Admin.

لأغراض مشروع جامعي فقط: يمكن أن يكون هناك Admin demo mode موثق بوضوح، لكن يجب عدم تقديمه كنظام صلاحيات أمني حقيقي.

إذا تم لاحقاً ربط Backend حقيقي، تنتقل صلاحيات Admin إلى Server-side authorization.

────────

21. API Layer

استخدم package:http.

مثال للطبقة:

```text
ProductService
     ↓
ApiClient
     ↓
HTTP GET
     ↓
DummyJSON
     ↓
JSON
     ↓
Product.fromJson()
     ↓
Product List
     ↓
UI
```

يجب معالجة:

• Success.
• Empty result.
• Network error.
• Invalid response.
• Timeout إن تمت إضافته.
• Loading state.

────────

22. حالات الشاشة

كل صفحة API يجب أن تتعامل مع:

```text
Loading
Success
Empty
Error
```

Loading

اعرض:

• CircularProgressIndicator
أو
• Skeleton بسيط.

Error

```text
تعذر تحميل المنتجات

تحققي من اتصال الإنترنت وحاولي مرة أخرى.

[ إعادة المحاولة ]
```

Empty

```text
لا توجد منتجات حالياً
```

────────

23. UX احترافي

لا تستخدم

• ألوان كثيرة.
• Gradients قوية.
• Buttons ضخمة.
• نصوص كثيرة.
• ازدحام.
• Icons عشوائية.
• صور ثابتة لمنتجات غير موجودة في API.

استخدم

• 8px / 16px / 24px spacing system.
• Border radius موحد.
• Typography hierarchy.
• Shadows خفيفة.
• Touch targets مناسبة.
• RTL.
• SafeArea.
• Responsive layout.

────────

24. Design System

الألوان المقترحة

```text
Ivory       #F8F6F1
Charcoal    #171717
Soft Black  #242424
Gold        #B79A63
Muted       #8A857D
White       #FFFFFF
Error       #B42318
Success     #26734D
```

الاستخدام

• الخلفية: Ivory.
• النص الأساسي: Charcoal.
• النص الثانوي: Muted.
• الأزرار المهمة: Charcoal.
• التفاصيل الفاخرة: Gold.
• Cards: White.

────────

25. Typography

التصميم يجب أن يدعم العربية بشكل ممتاز.

يفضل استخدام خط عربي واضح وأنيق إذا كان مسموحاً بإضافته للمشروع.

الترتيب:

```text
Display
Headline
Title
Body
Caption
```

مثلاً:

```text
LUMERE
اكتشفي أناقتك
عبايات مختارة بعناية
```

────────

26. Navigation

المسارات المقترحة:

```text
/
├── /splash
├── /signup
├── /home
├── /product/:id
├── /favorites
├── /profile
│
└── /admin
    ├── /admin/dashboard
    ├── /admin/products
    └── /admin/profile
```

────────

27. State Management

لا تجعل جميع الحالة داخل Widget واحد.

قسّم الحالة إلى:

```text
Auth State
Product State
Favorites State
Navigation State
Admin State
```

يمكن استخدام StatefulWidget في المشروع إذا كان كافياً، أو Provider / Riverpod إذا كانت الأداة ستضيف إدارة حالة منظمة.

لكن لا تضف State Management معقداً بلا حاجة.

────────

28. Models

Product

النموذج يجب أن يمثل بيانات DummyJSON المهمة:

```text
id
title
description
category
price
discountPercentage
rating
stock
tags
brand
sku
weight
dimensions
warrantyInformation
shippingInformation
availabilityStatus
reviews
returnPolicy
minimumOrderQuantity
meta
images
thumbnail
```

ليس ضرورياً عرض كل حقل في Card، لكن صفحة التفاصيل يجب أن تعرض كل المعلومات المناسبة المتاحة.

────────

29. Error Handling

لا تستخدم:

```dart
catch (_) {}
```

بدون معالجة.

يجب عرض حالة مفهومة للمستخدم.

مثلاً:

```text
NetworkException
ApiException
ParsingException
UnknownException
```

────────

30. Performance

يجب:

• استخدام ListView.builder.
• عدم تحميل صور ضخمة بلا حاجة.
• عدم تكرار HTTP requests بلا سبب.
• الاحتفاظ بالبيانات المناسبة في الذاكرة أثناء الجلسة.
• استخدام const widgets حيثما أمكن.
• عدم إعادة بناء الصفحة كاملة بلا داعٍ.

────────

31. Accessibility

أضف:

• Contrast جيد.
• حجم نص قابل للقراءة.
• Semantics للأيقونات المهمة.
• Labels للحقول.
• Touch targets مناسبة.
• عدم الاعتماد على اللون وحده لشرح الحالة.

────────

32. RTL

التطبيق عربي أولاً.

في MaterialApp يجب دعم:

```text
Locale
Directionality
RTL
```

النصوص والـ icons يجب أن تكون مناسبة لاتجاه RTL.

السهم للعودة يجب أن يتصرف بشكل صحيح حسب الاتجاه.

────────

33. Theme

أنشئ Theme واحداً مركزياً.

```text
AppTheme
├── ColorScheme
├── TextTheme
├── CardTheme
├── InputDecorationTheme
├── ElevatedButtonTheme
├── AppBarTheme
└── BottomNavigationBarTheme
```

لا تكرر الألوان في كل Widget.

────────

34. App Icon

استخدم:

```text
flutter_launcher_icons
```

الأيقونة المقترحة:

حرف:

```text
L
```

بتصميم Minimal Luxury.

أو Monogram:

```text
LA
```

يجب أن تكون واضحة حتى بحجم صغير.

────────

35. Splash

يفضل أن يكون التصميم:

```text
             L

          LUMERE
           ABAYA

     MODEST • ELEGANT
```

مدة:

```text
>= 2 seconds
```

ثم التوجيه بناءً على SharedPreferences.

────────

36. Admin UX

لا تجعل Admin مجرد صفحة نصوص.

أضف:

• Top greeting.
• Summary cards.
• API product count.
• Product list.
• Search.
• Product detail.
• Logout.
• Profile.

لكن ابقِ الوظائف ضمن حدود ما يمكن دعمه فعلياً من API والمشروع.

────────

37. User UX

Flow:

```text
Splash
   ↓
Sign Up
   ↓
Home
 ┌─┼───────────────┐
 ↓ ↓               ↓
Home Favorites   Profile
 ↓
Product Details
```

────────

38. Admin UX

Flow:

```text
Splash
   ↓
Session
   ↓
Admin
   ↓
Dashboard
 ┌────┼─────────┐
 ↓    ↓         ↓
Dash Products Profile
       ↓
    Details
```

────────

39. Search

البحث يكون على المنتجات التي تم جلبها من API.

يمكن تطبيق:

```text
title
description
category
brand
```

مع مراعاة عدم إنشاء Products جديدة محلياً.

────────

40. Filtering

التصفية المقترحة:

• Category.
• Price.
• Rating.
• Stock.

لكن لا تعرض Filter لا توجد بياناته في API.

مثلاً لا تضف “لون أسود” إذا لم توجد معلومة لون حقيقية.

────────

41. Favorites Logic

عند الضغط على:

```text
♡
```

يتحول إلى:

```text
♥
```

ثم:

```text
SharedPreferences
```

يحفظ ID المنتج.

عند إعادة تشغيل التطبيق:

```text
SharedPreferences
 ↓
favorites IDs
 ↓
API
 ↓
Products
 ↓
Favorites UI
```

────────

42. Registration Logic

بما أن المطلوب الأكاديمي هو Sign Up وليس Backend Authentication، يمكن تنفيذ التسجيل محلياً:

```text
Form
 ↓
Validation
 ↓
SharedPreferences
 ↓
isLoggedIn = true
 ↓
Home
```

ولا ينبغي الادعاء بأن المستخدم تم إنشاؤه في DummyJSON.

────────

43. Empty States

Favorites:

```text
Your favorites are waiting for you.

ابدئي باكتشاف مجموعتنا
```

زر:

```text
Explore Collection
```

Products:

```text
لا توجد نتائج مطابقة
```

Network:

```text
تعذر الاتصال
[حاول مرة أخرى]
```

────────

44. Animations

استخدم Animation خفيفة:

• Splash Fade.
• Product card fade/slide بسيط.
• Favorite scale animation.
• Page transition ناعم.

لا تستخدم animations كثيرة تضر بالأداء أو تجعل التطبيق يبدو غير احترافي.

────────

45. الملفات الإضافية

يجب تجهيز:

```text
README.md
```

ويحتوي:

• فكرة التطبيق.
• المتطلبات.
• Packages.
• API.
• طريقة التشغيل.
• Architecture.
• Screens.
• SharedPreferences.
• Admin/User.
• صور المشروع إذا توفرت.
• ملاحظات المشروع.

────────

46. README يجب أن يوضح المتطلبات الأكاديمية

أضف جدولاً:

|المتطلب               |التنفيذ|
|----------------------|-------|
|Flutter               |نعم    |
|DummyJSON API         |نعم    |
|package:http          |نعم    |
|SharedPreferences     |نعم    |
|Sign Up               |نعم    |
|Validation            |نعم    |
|Password visibility   |نعم    |
|Bottom Navigation     |نعم    |
|ListView.builder      |نعم    |
|Card                  |نعم    |
|ListTile              |نعم    |
|Product Details       |نعم    |
|flutter_launcher_icons|نعم    |
|Splash >= 2 sec       |نعم    |
|User                  |نعم    |
|Admin                 |نعم    |

────────

47. Definition of Done

لا تعتبر المشروع مكتملًا إلا إذا تحققت النقاط التالية:

Authentication

☐ Sign Up تعمل.
☐ Username موجود.
☐ Email موجود.
☐ Password موجود.
☐ Confirm Password موجود.
☐ Validation تعمل.
☐ Show/Hide password يعمل.
☐ التسجيل يحفظ الجلسة.
☐ التطبيق يستعيد الجلسة بعد الإغلاق.

API

☐ package:http مستخدمة فعلياً.
☐ DummyJSON مستخدم فعلياً.
☐ لا توجد قائمة Products ثابتة.
☐ يوجد Loading.
☐ يوجد Error state.
☐ يوجد Retry.
☐ المنتجات تعرض من API.

UI

☐ Card.
☐ ListTile أو تصميم مبني عليه.
☐ صورة.
☐ عنوان.
☐ وصف/معلومات.
☐ Icon.
☐ ListView.builder.
☐ Product Details.

Persistence

☐ SharedPreferences مستخدمة فعلياً.
☐ username محفوظ.
☐ login state محفوظ.
☐ logout يمسح حالة الدخول.
☐ favorites محفوظة إن تم اعتمادها.

App

☐ Splash.
☐ مدة >= 2 seconds.
☐ App icon.
☐ flutter_launcher_icons.
☐ لا توجد Errors.
☐ RTL.
☐ Responsive.

────────

48. تعليمات مباشرة لأداة البرمجة بالذكاء الاصطناعي

> **هذه هي الفقرة الأهم. يمكن نسخها بالكامل إلى أداة Coding Agent.**

MASTER PROMPT

أنت Flutter Senior Engineer + Mobile UI/UX Designer + Software Architect.

أنشئ تطبيق Flutter كامل باسم:

LUMERE ABAYA

وهو متجر عبايات نسائي فاخر.

أريد مشروعاً Production-Style منظمًا ونظيفًا، وليس Demo بدائياً.

المتطلبات غير القابلة للتفاوض

1. Flutter + Dart.
2. استخدام package:http فعلياً.
3. استخدام DummyJSON API فعلياً.
4. ممنوع بناء قائمة منتجات ثابتة داخل الكود.
5. استخدام SharedPreferences فعلياً.
6. إنشاء Sign Up screen.
7. Username.
8. Email.
9. Password.
10. Confirm Password.
11. Password show/hide.
12. Form Validation.
13. حفظ login state.
14. حفظ username.
15. استعادة session عند إعادة تشغيل التطبيق.
16. Logout.
17. Bottom Navigation.
18. على الأقل Home + Favorites + Profile.
19. استخدام ListView.builder.
20. كل منتج داخل Card.
21. Card يحتوي صورة + عنوان + وصف/معلومات + Icon.
22. الضغط على المنتج يفتح Details Screen.
23. Details تعرض كل التفاصيل المهمة التي يوفرها API.
24. استخدام flutter_launcher_icons.
25. Splash Screen احترافية.
26. Splash مدتها لا تقل عن ثانيتين.
27. Splash توجه إلى Home إذا كانت session موجودة، وإلى Sign Up إذا لم توجد.
28. التطبيق RTL وأنيق جداً.
29. إضافة User role وAdmin role بطريقة موثقة وواضحة.
30. عدم الادعاء بوجود Backend حقيقي أو Server-side authorization غير موجود.

الهوية البصرية

اجعل LUMERE ABAYA علامة فاخرة.

Palette:

• Ivory #F8F6F1
• Charcoal #171717
• Soft Black #242424
• Gold #B79A63
• Muted #8A857D
• White #FFFFFF

التصميم:

• Minimal Luxury.
• Editorial fashion style.
• Spacious layout.
• Elegant cards.
• Soft rounded corners.
• Subtle shadows.
• Strong typography.
• Premium product imagery.
• No visual clutter.

اللغة

التطبيق عربي RTL.

اجعل النصوص قابلة للترجمة لاحقاً، ولا تضع النصوص موزعة بشكل عشوائي داخل المشروع إذا كان من الممكن تنظيمها.

API

استخدم DummyJSON Products API.

أنشئ:

• ApiClient.
• ProductService.
• Product model.
• JSON parsing.
• Error handling.
• Loading.
• Empty state.
• Retry.

اعرض المنتجات بواسطة ListView.builder.

Architecture

استخدم بنية Features + Core واضحة.

لا تضع كل التطبيق في main.dart.

افصل:

• API.
• Models.
• Storage.
• Authentication.
• Screens.
• Reusable widgets.
• Theme.
• Navigation.

SharedPreferences

أنشئ LocalStorage service.

المفاتيح:

• isLoggedIn
• username
• email
• role
• favorites

التسجيل:

```text
validate
→ save
→ login
→ Home
```

عند فتح التطبيق:

```text
Splash
→ read SharedPreferences
→ route
```

Favorites

احفظ IDs فقط قدر الإمكان:

```text
[1, 3, 9]
```

ولا تحول SharedPreferences إلى قاعدة بيانات وهمية.

Home

صمم:

• Header.
• Greeting.
• Search.
• Hero section.
• Product list.
• Favorite actions.

Product Card

يجب أن يكون أنيقاً جداً.

اعرض:

• thumbnail.
• title.
• description.
• price.
• rating.
• favorite icon.
• navigation affordance.

Details

اعرض:

• image.
• images إذا توفرت.
• title.
• description.
• price.
• discount.
• rating.
• stock.
• category.
• brand إن توفر.
• SKU إن توفر.
• shipping.
• warranty.
• return policy.
• أي معلومات مفيدة يوفرها API.

لا تخترع بيانات.

Admin

أنشئ Admin Dashboard منفصل.

Admin:

• Dashboard.
• Product listing.
• Search.
• Details.
• Profile.
• Logout.

اعرض الإحصائيات المبنية على البيانات الفعلية التي يستطيع التطبيق الوصول إليها.

لا تضف CRUD وهمياً إلى DummyJSON.

إذا كانت وظيفة معينة لا يمكن تنفيذها بدون Backend، اذكر ذلك في README بدلاً من اختراع نجاح وهمي.

Code Quality

• Null safety.
• Clean naming.
• Small reusable widgets.
• const حيثما أمكن.
• Avoid duplicated code.
• Avoid giant widgets.
• No empty catch blocks.
• Proper error states.
• Proper disposal where required.
• No hardcoded product lists.
• No unnecessary packages.

UI Quality

أريد النتيجة كأنها تطبيق متجر حقيقي.

اهتم بالتفاصيل:

• spacing.
• typography.
• icons.
• cards.
• transitions.
• loading.
• empty states.
• error states.
• responsive layouts.
• keyboard behavior.
• RTL.

قبل إنهاء المشروع

راجع الكود مقابل كل متطلبات المشروع.

أنشئ Checklist داخل README.

شغّل:

```bash
flutter analyze
```

ثم أصلح جميع الأخطاء الممكنة.

وشغّل:

```bash
flutter test
```

إذا تم إنشاء اختبارات.

تأكد من عدم وجود:

• compile errors.
• missing imports.
• invalid routes.
• broken API parsing.
• broken SharedPreferences flow.
• broken RTL.
• ListView العادي بدلاً من ListView.builder.

أهم قاعدة

لا تجعل جمال الواجهة على حساب متطلبات المادة.

كل متطلب أكاديمي يجب أن يكون واضحاً في الكود ويمكن للدكتور/المقيم اكتشافه بسهولة.

────────

49. اختبار العرض أمام الدكتور

عند العرض، استخدم هذا السيناريو:

Step 1

فتح التطبيق.

يظهر:

```text
LUMERE ABAYA
```

لمدة لا تقل عن ثانيتين.

Step 2

يفتح Sign Up.

أدخل:

```text
Username
Email
Password
Confirm Password
```

وأظهر أن Validation تعمل.

Step 3

بعد التسجيل:

```text
Home
```

Step 4

أظهر Bottom Navigation:

```text
Home
Favorites
Profile
```

Step 5

أظهر أن المنتجات قادمة من API.

Step 6

افتح Product Card.

أظهر Details.

Step 7

أضف Favorite.

Step 8

اذهب إلى Favorites.

Step 9

أغلق التطبيق وافتحه.

أظهر أن SharedPreferences أعادت المستخدم بدون Sign Up مرة أخرى.

Step 10

اذهب إلى Profile.

اضغط Logout.

أظهر أنه تم حذف session والعودة إلى Sign Up.

Step 11

اعرض Admin Dashboard.

────────

50. أفكار إضافية ترفع مستوى المشروع

هذه ليست بديلة عن المتطلبات الأساسية، بل إضافات اختيارية:

1. Premium Hero

قسم افتتاحي:

```text
THE NEW LUMERE EDIT

Quiet luxury.
Timeless modesty.
```

2. Recently Viewed

حفظ IDs للمنتجات التي تمت مشاهدتها.

3. Favorite Animation

Animation قصيرة عند الضغط على القلب.

4. Product Rating

عرض النجوم بناءً على rating من API.

5. Stock Badge

مثلاً:

```text
In Stock
Low Stock
Out of Stock
```

لكن يجب أن يعتمد على بيانات API.

6. Pull To Refresh

إعادة جلب المنتجات.

7. Search Debounce

إذا تم تنفيذ البحث أثناء الكتابة.

8. Dark Mode

اختياري، مع المحافظة على الهوية الفاخرة.

────────

51. الأشياء التي لا يجب فعلها

ممنوع:

```text
final fakeProducts = [...]
```

ممنوع:

• استخدام صور منتجات ثابتة بدلاً من API.
• استخدام ListView عادي بدلاً من ListView.builder.
• إضافة SharedPreferences وعدم استخدامها.
• عمل Splash شكلي بدون قراءة session.
• وضع كل التطبيق في ملف واحد.
• إخفاء API calls داخل UI.
• استخدام بيانات Admin وهمية على أنها من Server.
• القول إن التطبيق يحتوي Backend حقيقياً إذا لم يتم بناؤه.
• إضافة CRUD وهمي ثم عرض رسالة “تم الحفظ على الخادم”.
• تجاهل Error/Loading states.
• تجاهل RTL.
• حذف متطلبات المادة بحجة تحسين التصميم.

────────

52. النتيجة النهائية المطلوبة

يجب أن يبدو التطبيق كالتالي:

```text
             LUMERE
              ABAYA
         ───────────────
          Splash Screen
                ↓
             Session
          ↙           ↘
      Sign Up          Admin
          ↓              ↓
        Home         Dashboard
          ↓
   ┌──────┼─────────┐
   ↓      ↓         ↓
 Home Favorites  Profile
   ↓
 Product Details
```

الهدف ليس مجرد تطبيق يعرض API.

الهدف:

مشروع Flutter أكاديمي مكتمل + تجربة متجر فاخرة + Architecture منظمة + API + Local Persistence + User/Admin + UX احترافي.

────────

53. اسم المشروع التقني

يفضل:

```text
lumere_abaya
```

Package name:

```text
com.example.lumere_abaya
```

ويمكن تغييره لاحقاً إلى اسم المؤسسة/الطالبة.

────────

54. عنوان المشروع للتسليم

LUMERE ABAYA — Luxury Abaya Store

وصف مختصر:

> تطبيق متجر عبايات نسائي مبني باستخدام Flutter، يعتمد على DummyJSON API لجلب بيانات المنتجات، ويستخدم SharedPreferences لإدارة جلسة المستخدم والمفضلة، مع واجهة عربية RTL، Bottom Navigation، تفاصيل المنتجات، User/Admin flows، وتصميم Luxury Minimal مستوحى من متاجر الأزياء الراقية.

────────

55. الخلاصة

هذه المواصفات تجعل المشروع يجمع بين ثلاثة أهداف:

الهدف الأكاديمي

تحقيق متطلبات مادة Flutter:

```text
Flutter
API
http
DummyJSON
SharedPreferences
Sign Up
Validation
ListView.builder
Card
ListTile
Details
Splash
Launcher Icon
Bottom Navigation
```

الهدف التقني

بناء كود:

```text
Clean
Modular
Maintainable
Testable
Responsive
```

الهدف الإبداعي

تحويل المشروع إلى تجربة حقيقية لعلامة:

LUMERE ABAYA

بهوية:

Elegant. Minimal. Timeless.

────────

تعليمات أخيرة للـ Coding Agent

لا تبدأ بإضافة ميزات عشوائية.

ابدأ بهذا الترتيب:

```text
1. Flutter project
2. Dependencies
3. Theme
4. Architecture
5. Models
6. API client
7. Product service
8. SharedPreferences service
9. Auth/Sign Up
10. Splash
11. Main Navigation
12. Home
13. Product Card
14. Product Details
15. Favorites
16. Profile
17. Admin
18. Launcher Icon
19. Error/Loading/Empty states
20. RTL polish
21. Testing
22. flutter analyze
23. README
24. Final requirements audit
```

وفي النهاية، يجب أن يكون المشروع قابلاً للتشغيل بدون Errors، مع الالتزام بمتطلبات المادة أولاً، ثم إضافة اللمسات الإبداعية فوقها.