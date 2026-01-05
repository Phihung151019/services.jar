.class public final Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# static fields
.field public static final BATTERY_USAGE_STATS_PER_UID_MAX_STATS_AGE:J


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->BATTERY_USAGE_STATS_PER_UID_MAX_STATS_AGE:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 11

    const/16 v0, 0x27e1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "Unknown tagId="

    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const-string/jumbo v0, "backstage_power"

    const-string/jumbo v5, "min_consumed_power_threshold"

    invoke-static {v0, v5, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    new-instance v5, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    invoke-virtual {v5, v2, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMinConsumedPowerThreshold(D)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryUsageStats;

    goto/16 :goto_7

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    const-string v1, "Cannot load config file "

    iget-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    monitor-enter v5

    :try_start_0
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :catch_0
    move-exception v7

    goto :goto_1

    :catchall_1
    move-exception v8

    if-eqz v7, :cond_0

    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v7

    :try_start_5
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    const-string v8, "BatteryStatsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    const-string v0, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v6, v5, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v6

    :try_start_7
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v5, v5, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getStartClockTime()J

    move-result-wide v7

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    new-instance v5, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    invoke-virtual {v5, v2, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v7, v8}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryUsageStats;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    const-string v1, "Cannot save config file "

    const-string v2, "Cannot load config file "

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    monitor-enter v3

    :try_start_8
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v6, :cond_3

    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_9

    :catch_1
    move-exception v6

    goto :goto_4

    :catchall_4
    move-exception v9

    if-eqz v6, :cond_2

    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v6

    :try_start_d
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v9
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :goto_4
    :try_start_e
    const-string v9, "BatteryStatsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_5
    const-string v2, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    const/4 v2, 0x0

    :try_start_f
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    const-string/jumbo v6, "Statsd atom pull timestamps"

    invoke-virtual {v5, v2, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_6

    :catch_2
    move-exception v5

    :try_start_10
    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v2, "BatteryStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object p0, v0

    :goto_7
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsProto()[B

    move-result-object v0

    :try_start_11
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    goto :goto_8

    :catch_3
    move-exception p0

    const-string v1, "BatteryStatsService"

    const-string v2, "Failure close BatteryUsageStats"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    invoke-static {p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v4

    :goto_9
    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw p0

    :catchall_6
    move-exception p0

    :try_start_13
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw p0

    :goto_a
    :try_start_14
    monitor-exit v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    throw p0

    :cond_4
    const-string/jumbo p1, "backstage_power"

    const-string/jumbo v0, "min_consumed_power_threshold"

    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    float-to-double v0, p1

    new-instance p1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    invoke-virtual {p1, v2, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMinConsumedPowerThreshold(D)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->accumulated()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    sget-wide v1, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->BATTERY_USAGE_STATS_PER_UID_MAX_STATS_AGE:J

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object p1

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryUsageStats;

    new-instance p1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1, v0}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;-><init>(Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;)V

    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;->logStats(Landroid/os/BatteryUsageStats;Ljava/util/List;)I

    move-result p1

    :try_start_15
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    return p1

    :catch_4
    move-exception p0

    const-string p2, "BatteryStatsService"

    const-string v0, "Failure close BatteryUsageStats"

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x277f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
