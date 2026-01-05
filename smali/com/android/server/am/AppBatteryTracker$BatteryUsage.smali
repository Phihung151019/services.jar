.class public Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BATT_DIMENS:[Landroid/os/BatteryConsumer$Dimensions;


# instance fields
.field public mPercentage:[D

.field public mUsage:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/os/BatteryConsumer$Dimensions;

    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->BATT_DIMENS:[Landroid/os/BatteryConsumer$Dimensions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    iget-object v1, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    if-eqz v0, :cond_0

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    iget-object p0, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    array-length p1, p0

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    aget-wide v3, v2, v0

    aget-wide v5, v1, v0

    add-double/2addr v3, v5

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    if-eqz v0, :cond_0

    array-length v0, v0

    array-length v2, v1

    if-eq v0, v2, :cond_1

    :cond_0
    array-length v0, v1

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    const/4 v0, 0x0

    if-lez p1, :cond_2

    iget-object v2, p2, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v2, Lcom/android/server/am/AppBatteryTracker;

    iget-object v2, v2, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    :cond_3
    const/4 p1, 0x0

    :goto_1
    array-length v2, v1

    if-ge p1, v2, :cond_5

    if-eqz v0, :cond_4

    aget-wide v2, v0, p1

    goto :goto_2

    :cond_4
    aget-wide v2, v1, p1

    iget v4, p2, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    :goto_2
    aput-wide v2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-wide v2, v2, v1

    iget-object v4, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    aget-wide v4, v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final getUsagePowerMah(I)D
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    aget-wide p0, p0, v0

    return-wide p0

    :cond_1
    aget-wide p0, p0, v0

    return-wide p0

    :cond_2
    aget-wide p0, p0, v0

    return-wide p0

    :cond_3
    aget-wide p0, p0, v0

    return-wide p0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final percentageToString()Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v1, p0, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x3

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x4

    aget-wide v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%4.2f%% %4.2f%% %4.2f%% %4.2f%% %4.2f%%"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final scaleInternal(D)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-wide v2, v1, v0

    mul-double/2addr v2, p1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    aget-wide v3, v2, v0

    aget-wide v5, v1, v0

    sub-double/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v1, p0, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x3

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x4

    aget-wide v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%.3f %.3f %.3f %.3f %.3f mAh"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
