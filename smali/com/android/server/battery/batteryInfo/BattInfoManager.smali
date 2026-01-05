.class public final Lcom/android/server/battery/batteryInfo/BattInfoManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

.field public mAuthentificationResults:[Z

.field public final mBatteryCount:I

.field public final mBatteryType:I

.field public mBatteryUsageSinceLastAsocUpdate:J

.field public final mContext:Landroid/content/Context;

.field public mCurrentBatteryUsage:J

.field public mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

.field public mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

.field public mFullBatteryStartTime:J

.field public mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

.field public final mHandler:Landroid/os/Handler;

.field public mInitCheckStatusCount:I

.field public mInitFinished:Z

.field public mQrData:Lcom/android/server/battery/batteryInfo/QrData;

.field public final mSupportsAsoc:Z

.field public final mSupportsFullStatusUsage:Z

.field public final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    iput-wide v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mContext:Landroid/content/Context;

    const-string p1, "/sys/class/power_supply/sec_auth_2nd/qr_code"

    invoke-static {p1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iput v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    iput v3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    goto :goto_0

    :cond_0
    const-string p1, "/sys/class/power_supply/sec_auth/qr_code"

    invoke-static {p1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    iput v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    goto :goto_0

    :cond_1
    const-string p1, "/sys/class/power_supply/sbp-fg-2/qr_code"

    invoke-static {p1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    iput v3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    goto :goto_0

    :cond_2
    const-string p1, "/sys/class/power_supply/sbp-fg/qr_code"

    invoke-static {p1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput v3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    iput v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    iput v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    :goto_0
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[BattInfoManager]mBatteryType:"

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,mBatteryCount:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v6, "[SS][BattInfo]BattInfoManager"

    invoke-static {v6, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[BattInfoManager]FEATURE_SAVE_BATTERY_CYCLE:"

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " ,FEATURE_FULL_BATTERY_CYCLE:"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/battery/BattFeatures;->FEATURE_FULL_BATTERY_CYCLE:Z

    invoke-static {v6, p1, v7}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    sget-boolean p1, Lcom/android/server/battery/BattFeatures;->FEATURE_SUPPORT_ASOC:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    move p1, v4

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    if-eq v7, v3, :cond_5

    if-eq v7, v2, :cond_5

    move v0, v4

    :cond_5
    iput-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[BattInfoManager]supportsAsoc:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,supportsFullStatusUsage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mBatteryType:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,supportsAsoc:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/data/log/battery_service/battery_service_main_history"

    const-string v2, "BattInfoManager Created"

    invoke-static {v0, v2, p1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "BattInfoManagerWorkerThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final getAsocValue()[J
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    const/4 v1, 0x0

    const-string/jumbo v2, "[SS][BattInfo]BattInfoManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "[getAsocValue]InitFinished False"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    if-nez v0, :cond_1

    const-string/jumbo p0, "[getAsocValue]unsupported"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Long;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object p0

    return-object p0
.end method

.method public final getDischargeLevel()[J
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    if-nez v0, :cond_0

    const-string/jumbo p0, "[SS][BattInfo]BattInfoManager"

    const-string/jumbo v0, "[getDischargeLevel]InitFinished False"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Long;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object p0

    return-object p0
.end method

.method public final getFullStatusUsage()[J
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    const/4 v1, 0x0

    const-string/jumbo v2, "[SS][BattInfo]BattInfoManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "[getFullStatusUsage]InitFinished False"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    if-nez v0, :cond_1

    const-string/jumbo p0, "[getFullStatusUsage]unsupported"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Long;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object p0

    return-object p0
.end method

.method public final getIcAuthenticationResults()[Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    const-string/jumbo v1, "[SS][BattInfo]BattInfoManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "[getIcAuthenticationResults]InitFinished False"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[getIcAuthenticationResults]IcAuthenticationResults:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    invoke-static {v2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    return-object p0
.end method

.method public final init()V
    .locals 19

    move-object/from16 v1, p0

    const-string/jumbo v0, "[SS][BattInfo]BattInfoManager"

    const-string/jumbo v2, "[init]init"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    new-array v3, v2, [Z

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    iget v9, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    if-nez v9, :cond_0

    aput-boolean v7, v3, v7

    goto/16 :goto_3

    :cond_0
    const-string v10, "/sys/class/power_supply/sec_auth/batt_auth"

    const-string v11, "/sys/class/power_supply/sec_auth/presence"

    const-wide/16 v12, 0x1

    if-ne v9, v8, :cond_3

    invoke-static {v11}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v11, v14, v12

    if-nez v11, :cond_1

    invoke-static {v10}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    move v10, v4

    goto :goto_0

    :cond_1
    move v10, v7

    :goto_0
    aput-boolean v10, v3, v7

    const-string v10, "/sys/class/power_supply/sec_auth_2nd/presence"

    invoke-static {v10}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    const-string v10, "/sys/class/power_supply/sec_auth_2nd/batt_auth"

    invoke-static {v10}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    move v10, v4

    goto :goto_1

    :cond_2
    move v10, v7

    :goto_1
    aput-boolean v10, v3, v4

    goto :goto_3

    :cond_3
    if-ne v9, v4, :cond_5

    invoke-static {v11}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v11, v14, v12

    if-nez v11, :cond_4

    invoke-static {v10}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    move v10, v4

    goto :goto_2

    :cond_4
    move v10, v7

    :goto_2
    aput-boolean v10, v3, v7

    goto :goto_3

    :cond_5
    const-string v10, "/sys/class/power_supply/sbp-fg/qr_code"

    if-ne v9, v6, :cond_6

    invoke-static {v10, v4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v4

    aput-boolean v10, v3, v7

    goto :goto_3

    :cond_6
    if-ne v9, v5, :cond_7

    invoke-static {v10, v4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v4

    aput-boolean v10, v3, v7

    const-string v10, "/sys/class/power_supply/sbp-fg-2/qr_code"

    invoke-static {v10, v4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v4

    aput-boolean v10, v3, v4

    :cond_7
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "[checkIcAuthenticationResults]result:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    if-eq v9, v8, :cond_8

    if-ne v9, v4, :cond_9

    :cond_8
    invoke-static {v7, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v10, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda1;

    invoke-direct {v10, v1}, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V

    invoke-interface {v3, v10}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    const/16 v10, 0x3c

    if-ge v3, v10, :cond_9

    add-int/2addr v3, v4

    iput v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[handleMessage]DualAuth IcAuthentication fails. retry count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    invoke-static {v2, v3, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Final IcAuthenticationResults:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    invoke-static {v10}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ,Retry Count:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "/data/log/battery_service/battery_service_main_history"

    const-string v11, "Final IcAuthenticationResults"

    invoke-static {v10, v11, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    invoke-static {v3}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/battery/batteryInfo/QrData;

    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    invoke-direct {v0, v9, v2, v3}, Lcom/android/server/battery/batteryInfo/QrData;-><init>(II[Z)V

    iput-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    new-instance v10, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    iget-object v13, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    iget-object v14, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    iget v11, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    iget v12, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    invoke-direct/range {v10 .. v15}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;-><init>(II[ZLandroid/content/Context;Landroid/os/Looper;)V

    iput-object v10, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    iget-boolean v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    const/16 v3, 0x3ef

    if-eqz v0, :cond_16

    new-instance v12, Lcom/android/server/battery/batteryInfo/AsocData;

    iget-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    iget-object v13, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    iget-object v13, v13, Lcom/android/server/battery/batteryInfo/QrData;->mIsQrEquals:[Z

    invoke-direct {v12}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    iput v9, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    iput v2, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    iput-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    new-array v0, v2, [Ljava/lang/Long;

    iput-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    const-string v0, "/efs/FactoryApp/asoc"

    if-nez v9, :cond_a

    iget-object v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    const-string v14, "/sys/class/power_supply/sec_auth/asoc"

    if-ne v9, v4, :cond_b

    iget-object v15, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    if-ne v9, v8, :cond_c

    iget-object v15, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    const-string v15, "/efs/FactoryApp/asoc_2nd"

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    const-string v14, "/sys/class/power_supply/sec_auth_2nd/asoc"

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_4
    invoke-virtual {v12}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    iget v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    if-eq v0, v4, :cond_e

    if-ne v0, v8, :cond_d

    goto :goto_5

    :cond_d
    move/from16 v18, v9

    const-wide/16 v16, 0x0

    goto/16 :goto_c

    :cond_e
    :goto_5
    move v0, v7

    :goto_6
    iget v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    if-ge v0, v14, :cond_d

    iget-object v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    aget-boolean v14, v14, v0

    iget-object v15, v12, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    if-nez v14, :cond_f

    const-string/jumbo v14, "[syncAuthAndEfsForAuth]Authentification false => skip_"

    invoke-static {v0, v14, v15}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v9

    const-wide/16 v16, 0x0

    goto/16 :goto_b

    :cond_f
    aget-boolean v14, v13, v0

    const-wide/16 v16, 0x0

    const-wide/16 v10, 0x64

    if-eqz v14, :cond_12

    iget-object v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/android/server/battery/BattUtils;->readNodeAsLong$1(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move/from16 v18, v9

    invoke-static {v14}, Lcom/android/server/battery/BattUtils;->readNodeAsLong$1(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v14, v8, v16

    if-ltz v14, :cond_11

    cmp-long v10, v8, v10

    if-gtz v10, :cond_11

    cmp-long v10, v8, v5

    if-ltz v10, :cond_10

    goto :goto_7

    :cond_10
    move-wide v10, v8

    goto :goto_8

    :cond_11
    :goto_7
    move-wide v10, v5

    :goto_8
    const-string/jumbo v14, "[syncAuthAndEfsForAuth]efsAsoc:"

    const-string v4, " ,authAsoc:"

    invoke-static {v14, v5, v6, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " =>worseAsoc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v10, v11, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    iget-object v4, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v10, v11, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    goto :goto_b

    :cond_12
    move/from16 v18, v9

    iget-object v4, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v8, 0xffff

    cmp-long v6, v4, v8

    if-eqz v6, :cond_14

    cmp-long v6, v4, v16

    if-gez v6, :cond_13

    goto :goto_9

    :cond_13
    move-wide v10, v4

    goto :goto_a

    :cond_14
    :goto_9
    const-string/jumbo v4, "[syncAuthAndEfsForAuth]init authAsoc:100"

    invoke-static {v15, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v10, v11, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :goto_a
    const-string/jumbo v4, "[syncAuthAndEfsForAuth]sync efs asoc with auth"

    invoke-static {v15, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v10, v11, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :goto_b
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v18

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v8, 0x3

    goto/16 :goto_6

    :goto_c
    invoke-virtual {v12, v3}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    invoke-virtual {v12}, Lcom/android/server/battery/batteryInfo/AsocData;->updateAndSet()V

    invoke-virtual {v12}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    const-string v0, "/efs/FactoryApp/batt_hist"

    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string/jumbo v4, "[SS]BattUtils"

    :try_start_0
    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    goto :goto_d

    :catch_0
    move-exception v0

    const-string/jumbo v5, "[deleteNode]Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    const-string/jumbo v0, "[deleteNode]path:/efs/FactoryApp/batt_hist ,result:"

    invoke-static {v0, v4, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_15
    iput-object v12, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

    goto :goto_e

    :cond_16
    move/from16 v18, v9

    const-wide/16 v16, 0x0

    :goto_e
    new-instance v0, Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    iget-object v4, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    iget-object v5, v5, Lcom/android/server/battery/batteryInfo/QrData;->mIsQrEquals:[Z

    invoke-direct {v0}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    move/from16 v6, v18

    iput v6, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    iput v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    iput-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    new-array v4, v2, [Ljava/lang/Long;

    iput-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    const-string v4, "/efs/FactoryApp/batt_discharge_level"

    if-nez v6, :cond_17

    iget-object v7, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_17
    const-string v7, "/sys/class/power_supply/sec_auth/batt_discharge_level"

    const/4 v8, 0x1

    if-ne v6, v8, :cond_18

    iget-object v8, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_18
    const-string v8, "/efs/FactoryApp/batt_discharge_level_2nd"

    const/4 v9, 0x3

    if-ne v6, v9, :cond_19

    iget-object v9, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    const-string v7, "/sys/class/power_supply/sec_auth_2nd/batt_discharge_level"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_19
    const-string v7, "/sys/class/power_supply/sbp-fg/cycle"

    const/4 v9, 0x2

    if-ne v6, v9, :cond_1a

    iget-object v8, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1a
    const/4 v9, 0x4

    if-ne v6, v9, :cond_1b

    iget-object v9, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    const-string v7, "/sys/class/power_supply/sbp-fg-2/cycle"

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_f
    iget v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    const/4 v8, 0x1

    if-eq v4, v8, :cond_1f

    const/4 v9, 0x3

    if-ne v4, v9, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v9, 0x2

    if-eq v4, v9, :cond_1d

    const/4 v9, 0x4

    if-ne v4, v9, :cond_1e

    :cond_1d
    move-wide/from16 v4, v16

    goto :goto_10

    :cond_1e
    if-nez v4, :cond_20

    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->initializeIfNotExist()V

    goto :goto_12

    :goto_10
    invoke-virtual {v0, v4, v5}, Lcom/android/server/battery/batteryInfo/DischargeLevelData;->updateEfsFromSBP(J)V

    goto :goto_12

    :cond_1f
    :goto_11
    invoke-virtual {v0, v5}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->syncAuthAndEfsForAuth$1([Z)V

    :cond_20
    :goto_12
    invoke-virtual {v0, v3}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    iput-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    iget-boolean v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    if-eqz v0, :cond_27

    new-instance v0, Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    iget-object v4, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    iget-object v5, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    iget-object v5, v5, Lcom/android/server/battery/batteryInfo/QrData;->mIsQrEquals:[Z

    invoke-direct {v0}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    iput v6, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    iput v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    iput-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    new-array v2, v2, [Ljava/lang/Long;

    iput-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    const-string v2, "/efs/FactoryApp/batt_full_status_usage"

    if-nez v6, :cond_21

    iget-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_21
    const-string v4, "/sys/class/power_supply/sec_auth/batt_full_status_usage"

    const/4 v8, 0x1

    if-ne v6, v8, :cond_22

    iget-object v6, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_22
    const/4 v9, 0x3

    if-ne v6, v9, :cond_23

    iget-object v6, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    const-string v6, "/efs/FactoryApp/batt_full_status_usage_2nd"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    const-string v4, "/sys/class/power_supply/sec_auth_2nd/batt_full_status_usage"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_13
    iget v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    const/4 v8, 0x1

    if-eq v2, v8, :cond_25

    const/4 v9, 0x3

    if-ne v2, v9, :cond_24

    goto :goto_14

    :cond_24
    if-nez v2, :cond_26

    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->initializeIfNotExist()V

    goto :goto_15

    :cond_25
    :goto_14
    invoke-virtual {v0, v5}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->syncAuthAndEfsForAuth$1([Z)V

    :cond_26
    :goto_15
    invoke-virtual {v0, v3}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    iput-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    :cond_27
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    if-eqz v0, :cond_28

    invoke-virtual {v1}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processCycle()V

    :cond_28
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    return-void
.end method

.method public final processCycle()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    invoke-virtual {v0, p0}, Lcom/android/server/battery/batteryInfo/DischargeLevelData;->setCycle(Lcom/android/server/battery/batteryInfo/FullStatusUsageData;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/battery/batteryInfo/DischargeLevelData;->setCycle(Lcom/android/server/battery/batteryInfo/FullStatusUsageData;)V

    return-void
.end method

.method public final processDischargingLevel(JJZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    const-string/jumbo v1, "[SS][BattInfo]BattInfoManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "[processDischargingLevel]InitFinished False"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    cmp-long v0, p3, p1

    if-gez v0, :cond_2

    iget-wide v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    sub-long/2addr p1, p3

    add-long/2addr p1, v4

    iput-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "[processDischargingLevel]mCurrentBatteryUsage:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    :cond_2
    if-nez p5, :cond_3

    iget-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    const-wide/16 p3, 0xa

    cmp-long p1, p1, p3

    if-gez p1, :cond_3

    :goto_0
    return-void

    :cond_3
    iget-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    iput-wide v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    iget-object p3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p1, p2, p5}, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;JI)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final processFullStatusUsage(JZ)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    const-string/jumbo v1, "[SS][BattInfo]BattInfoManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "[processFullStatusUsage]InitFinished False"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x64

    if-nez v0, :cond_1

    cmp-long p1, p1, v2

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "[processFullStatusUsage]FullBatteryStartTime:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    if-nez p3, :cond_3

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    const-wide/16 v10, 0xa

    cmp-long p3, v8, v10

    if-gez p3, :cond_3

    :cond_2
    return-void

    :cond_3
    cmp-long p1, p1, v2

    if-nez p1, :cond_4

    iput-wide v6, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    const-string/jumbo p1, "[processFullStatusUsage]time to save. maintains 100%"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iput-wide v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    const-string/jumbo p1, "[processFullStatusUsage]time to save. end of 100%"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;

    const/4 p3, 0x1

    invoke-direct {p2, p0, v8, v9, p3}, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;JI)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final supportsFullStatusUsage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    return p0
.end method
