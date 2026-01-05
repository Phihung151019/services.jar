.class public final Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAutoclickDelaySettingUri:Landroid/net/Uri;

.field public mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p2, "accessibility_autoclick_delay"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    const-string/jumbo p2, "accessibility_autoclick_cursor_area_size"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    const-string/jumbo p2, "accessibility_autoclick_ignore_minor_cursor_movement"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    const-string/jumbo p2, "accessibility_autoclick_revert_to_left_click"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    const/16 p2, 0x258

    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    const-string/jumbo v1, "accessibility_autoclick_delay"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    :cond_0
    return-void
.end method
