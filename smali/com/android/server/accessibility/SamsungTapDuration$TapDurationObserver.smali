.class public final Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mRemoveAnimationSettingUri:Landroid/net/Uri;

.field public final mTapDurationSettingUri:Landroid/net/Uri;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDuration;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTapDuration;ILcom/android/server/accessibility/SamsungTapDuration$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "tap_duration_threshold"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    const-string/jumbo p1, "remove_animations"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    iput p2, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    const v0, 0x3dcccccd    # 0.1f

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    const-string/jumbo v2, "tap_duration_threshold"

    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p2

    iput p2, p1, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThreshold:F

    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    iget p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThreshold:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "remove_animations"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    const/4 p1, 0x4

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setRemoveAnimationEnabled(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
