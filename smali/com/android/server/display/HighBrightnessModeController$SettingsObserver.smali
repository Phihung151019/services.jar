.class public final Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLowPowerModeSetting:Landroid/net/Uri;

.field public mStarted:Z

.field public final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "low_power"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->updateLowPower()V

    return-void
.end method

.method public final updateLowPower()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-object v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    if-ne v2, v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Settings.Global.LOW_POWER_MODE enabled: "

    const-string v1, "HighBrightnessModeController"

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iput-boolean v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    return-void
.end method
