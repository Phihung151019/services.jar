.class public final Lcom/android/server/contentprotection/ContentProtectionConsentManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public volatile mCachedContentProtectionUserConsent:Z

.field public volatile mCachedPackageVerifierConsent:Z

.field public final mContentObserver:Landroid/database/ContentObserver;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDevicePolicyCache:Landroid/app/admin/DevicePolicyCache;

.field public final mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/app/admin/DevicePolicyCache;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mDevicePolicyCache:Landroid/app/admin/DevicePolicyCache;

    const-class p3, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object p3, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    new-instance p3, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;

    invoke-direct {p3, p0, p1}, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;-><init>(Lcom/android/server/contentprotection/ContentProtectionConsentManager;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentObserver:Landroid/database/ContentObserver;

    const-string/jumbo p1, "package_verifier_user_consent"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v1, p3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v0, "content_protection_user_consent"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3, v1, p3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {p2, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p3, 0x1

    if-lt p1, p3, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedPackageVerifierConsent:Z

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    move v1, p3

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedContentProtectionUserConsent:Z

    return-void
.end method
