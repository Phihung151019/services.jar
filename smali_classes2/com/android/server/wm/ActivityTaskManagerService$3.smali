.class public final Lcom/android/server/wm/ActivityTaskManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatUtils;->getNonSystemApplicationInfo(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "0011"

    invoke-static {p0, p2, p1}, Lcom/android/server/wm/AdaptiveAppByDefaultLogger;->sendSaLoggingAsync(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
