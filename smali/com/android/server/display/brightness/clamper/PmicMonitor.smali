.class public final Lcom/android/server/display/brightness/clamper/PmicMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAvgPowerCircularList:[F

.field public mCurrentTimestampMillis:J

.field public mCurrentTotalAvgPower:F

.field public final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public mLastEnergyConsumed:F

.field public mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

.field mPowerChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;

.field public mPowerListEnd:I

.field public mPowerListStart:I

.field public final mPowerMonitorPeriodConfigMillis:J

.field public final mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field final mThermalService:Landroid/os/IThermalService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda2;Landroid/os/IThermalService;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mLastEnergyConsumed:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTimestampMillis:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListEnd:I

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mThermalService:Landroid/os/IThermalService;

    const-class p1, Landroid/power/PowerStatsInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/power/PowerStatsInternal;

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    div-int/2addr p3, p4

    new-array p1, p3, [F

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mAvgPowerCircularList:[F

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long p1, p4

    iput-wide p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerMonitorPeriodConfigMillis:J

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const-string/jumbo v1, "PmicMonitor"

    if-nez v0, :cond_0

    const-string/jumbo p0, "Power stats service not found for monitoring."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_1

    const-string/jumbo p0, "Thermal service not found."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/PmicMonitor;)V

    iget-wide v4, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerMonitorPeriodConfigMillis:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v4

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_2
    const-string/jumbo p0, "PMIC already scheduled, stop() called before start."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
