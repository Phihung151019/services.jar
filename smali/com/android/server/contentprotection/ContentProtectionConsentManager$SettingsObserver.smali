.class public final Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentprotection/ContentProtectionConsentManager;


# direct methods
.method public constructor <init>(Lcom/android/server/contentprotection/ContentProtectionConsentManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;->this$0:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 3

    const-string/jumbo p1, "content_protection_user_consent"

    const-string/jumbo p3, "package_verifier_user_consent"

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p0, "Ignoring unexpected property: "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProtectionConsentManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;->this$0:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    iget-object p2, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedContentProtectionUserConsent:Z

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager$SettingsObserver;->this$0:Lcom/android/server/contentprotection/ContentProtectionConsentManager;

    iget-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-lt p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/contentprotection/ContentProtectionConsentManager;->mCachedPackageVerifierConsent:Z

    return-void
.end method
