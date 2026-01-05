.class public final Lcom/android/server/am/mars/filter/filter/PredownloadFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

.field public mTempAllowlist:Ljava/util/ArrayList;


# virtual methods
.method public final deInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->registered:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    iget-object v1, v1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->registered:Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    new-instance p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;

    invoke-direct {p1, p2, p4}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;-><init>(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "MARs:PredownloadFilter"

    const-string p1, "EXEMPT!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x1c

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;-><init>(Lcom/android/server/am/mars/filter/filter/PredownloadFilter;)V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->registered:Z

    if-nez p1, :cond_1

    const-string/jumbo p1, "com.samsung.action_exempt_for_pre_download"

    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    iget-object v0, v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->registered:Z

    :cond_1
    const-string/jumbo p0, "sys.config.mars.predl_filter.enabled"

    const-string p1, "1"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
