# 1. Ochrana natívnych metód (C/C++ prepojenie)
-keepclasseswithmembernames class * {
    native <methods>;
}

# 2. Kompletná ochrana balíka vašej aplikácie (Zabráni premenovaniu kritických častí)
-keep class df.root.** { *; }
-keep class df.root.databinding.** { *; }

# 3. Ochrana pre ViewBinding a interné Android komponenty
-keepclassmembers class * {
    void *Click(...);
}

# 4. Potlačenie varovaní pre chýbajúce referencie (ak nejaké knižnice hovoria s chýbajúcim kódom)
-dontwarn df.root.**
