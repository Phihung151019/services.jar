.class public final Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-boolean p2, p1, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget p1, p1, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string/jumbo p2, "Restore low battery force dim (manual brightness)"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    iget p2, p1, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    iget-object v0, p1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mClampedMaxBrightness:F

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FF)V

    :cond_0
    return-void
.end method
