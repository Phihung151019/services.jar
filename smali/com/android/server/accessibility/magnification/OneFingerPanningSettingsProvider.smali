.class public final Lcom/android/server/accessibility/magnification/OneFingerPanningSettingsProvider;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final KEY:Ljava/lang/String; = "accessibility_single_finger_panning_enabled"


# instance fields
.field public mCached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mContentResolver:Landroid/content/ContentResolver;

.field mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "accessibility_single_finger_panning_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method public static isOneFingerPanningEnabledDefault(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101a3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
