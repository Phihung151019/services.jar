.class public final Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/Heimdall;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/Heimdall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    iget-object p1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    iget-boolean v0, p1, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mUriAlwaysRunningGlobalQuota:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/Heimdall;->updateAlwaysRunningGlobalQuota(Landroid/content/ContentResolver;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    iget-object p1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mUriAnomalyTypeEnable:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    iget p2, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_3

    :goto_0
    move p2, v2

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    iget-object v1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/chimera/heimdall/Heimdall;->updateAnomalyType(Landroid/content/ContentResolver;)V

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    iget p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_5

    :goto_2
    move v0, v2

    :cond_5
    if-eqz p2, :cond_a

    if-nez v0, :cond_a

    sget-object p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_6
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    iget-object p1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mUriSpecUpdate:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/Heimdall;->updateSpec(Landroid/content/ContentResolver;)V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    iget-object p1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mUriReportHourInterval:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "heimdall_report_hour_interval"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_8

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    return-void

    :cond_9
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    iget-object p1, p1, Lcom/android/server/chimera/heimdall/Heimdall;->mUriRandomSampleRate:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "heimdall_random_sample_rate"

    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_a

    const/16 p0, 0x3e8

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sRandomSampleRate:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Get command from issueTracker failed! "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method
