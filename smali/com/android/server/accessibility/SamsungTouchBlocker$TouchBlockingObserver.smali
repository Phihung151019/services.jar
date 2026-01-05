.class public final Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mTapDurationSettingsUri:Landroid/net/Uri;

.field public final mTouchBlockingSettingsUri:Landroid/net/Uri;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTouchBlocker;ILcom/android/server/accessibility/SamsungTouchBlocker$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "touch_blocking_period"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    const-string/jumbo p1, "tap_duration_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTapDurationSettingsUri:Landroid/net/Uri;

    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "touch_blocking_period"

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {p2, v0, v2, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p2

    iput p2, p1, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriod:F

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    iget p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriod:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTapDurationSettingsUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "tap_duration_enabled"

    iget p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_1

    move v1, p2

    :cond_1
    iput-boolean v1, p1, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapDurationEnabled:Z

    :cond_2
    return-void
.end method
