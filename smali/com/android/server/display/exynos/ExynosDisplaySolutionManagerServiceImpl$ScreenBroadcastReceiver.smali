.class public final Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const-string p1, "ExynosDisplaySolutionManagerServiceImpl"

    const-string p2, "ACTION_BOOT_COMPLETED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    iput-boolean v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    iget-boolean p2, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mTuneEnableSetting:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->enableTuneTimer(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    return-void

    :cond_1
    const-string/jumbo p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    return-void

    :cond_2
    const-string/jumbo p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;

    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo p0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method
