.class public final synthetic Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/PmicMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/PmicMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    move-object v1, v0

    check-cast v1, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v1}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v1

    if-eqz v1, :cond_a

    array-length v2, v1

    if-nez v2, :cond_0

    goto/16 :goto_a

    :cond_0
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    const/4 v6, 0x3

    if-ge v4, v5, :cond_2

    aget-object v5, v1, v4

    iget-byte v7, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-ne v7, v6, :cond_1

    iget v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v1

    const-string/jumbo v4, "PmicMonitor"

    if-nez v1, :cond_3

    const-string p0, "DISPLAY energyConsumerIds size is null"

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_1
    const-string/jumbo v2, "exception reading getEnergyConsumedAsync: "

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v0, v1

    goto :goto_4

    :goto_3
    const-string/jumbo v2, "timeout or interrupt reading getEnergyConsumedAsync failed"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_4
    if-eqz v0, :cond_9

    array-length v2, v0

    if-nez v2, :cond_4

    goto/16 :goto_9

    :cond_4
    aget-object v2, v0, v3

    iget-wide v7, v2, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    long-to-float v5, v7

    iget v7, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mLastEnergyConsumed:F

    sub-float/2addr v5, v7

    iget-wide v7, v2, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    iget-wide v9, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTimestampMillis:J

    sub-long/2addr v7, v9

    long-to-float v2, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v2, v7

    div-float/2addr v5, v2

    div-float/2addr v5, v7

    const/4 v2, 0x1

    :try_start_1
    iget-object v7, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v7, v6}, Landroid/os/IThermalService;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object v6

    array-length v7, v6

    if-le v7, v2, :cond_5

    const-string/jumbo v7, "Multiple skin temperatures not allowed!"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_2
    move-exception v6

    goto :goto_6

    :cond_5
    :goto_5
    array-length v7, v6

    if-lez v7, :cond_6

    aget-object v1, v6, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :goto_6
    const-string/jumbo v7, "getDisplayTemperature failed"

    invoke-static {v7, v6, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_6
    :goto_7
    iget v4, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListEnd:I

    iget-object v6, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mAvgPowerCircularList:[F

    aput v5, v6, v4

    iget v7, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    add-float/2addr v7, v5

    iput v7, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    add-int/2addr v4, v2

    array-length v5, v6

    rem-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListEnd:I

    iget v5, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    if-ne v5, v4, :cond_7

    move v4, v2

    goto :goto_8

    :cond_7
    move v4, v3

    :goto_8
    aget-object v0, v0, v3

    iget-wide v8, v0, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    long-to-float v3, v8

    iput v3, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mLastEnergyConsumed:F

    iget-wide v8, v0, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    iput-wide v8, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTimestampMillis:J

    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;

    array-length v3, v6

    int-to-float v3, v3

    div-float/2addr v7, v3

    invoke-virtual {v1}, Landroid/os/Temperature;->getStatus()I

    move-result v1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda2;

    iget-object v0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    new-instance v3, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, v1, v7}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;IF)V

    iget-object v0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    if-eqz v4, :cond_a

    iget v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    iget v1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    aget v3, v6, v1

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    add-int/2addr v1, v2

    array-length v0, v6

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    goto :goto_a

    :cond_9
    :goto_9
    const-string/jumbo p0, "displayResults are null"

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_a
    return-void
.end method
