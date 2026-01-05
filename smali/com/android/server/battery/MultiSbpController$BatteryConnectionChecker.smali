.class public final Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEFAULT_BATTERY_NODES:[Ljava/lang/String;


# instance fields
.field public final FULLY_CONNECTED:I

.field public mCurrentConnections:I

.field public mPreviousConnections:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "/sys/class/power_supply/battery/batt_main_con_det"

    const-string v1, "/sys/class/power_supply/battery/batt_sub_con_det"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->DEFAULT_BATTERY_NODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->FULLY_CONNECTED:I

    iput v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mPreviousConnections:I

    iput v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    return-void
.end method


# virtual methods
.method public final check()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->DEFAULT_BATTERY_NODES:[Ljava/lang/String;

    const/4 v4, 0x2

    const-string/jumbo v5, "[SS]MultiSbpController.BatteryConnectionChecker"

    if-ge v1, v4, :cond_1

    aget-object v4, v3, v1

    const/4 v6, -0x1

    :try_start_0
    invoke-static {v4, v0}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo v4, "[SS]BattUtils"

    const-string/jumbo v7, "[readNodeAsInt]NumberFormatException"

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    :goto_1
    if-ne v4, v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "call wrong battery connection value "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    goto :goto_2

    :cond_0
    shl-int v3, v4, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    iput v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mPreviousConnections:I

    iput v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "check previousConnections:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mPreviousConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,currentConnections:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    invoke-static {v0, p0, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mPreviousConnections:I

    iget v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    const-string/jumbo v2, "prev["

    const-string/jumbo v3, "] > curr["

    const-string/jumbo v4, "] / full["

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->FULLY_CONNECTED:I

    const-string/jumbo v1, "]"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
