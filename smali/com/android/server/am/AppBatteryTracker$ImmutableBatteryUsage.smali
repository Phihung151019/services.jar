.class public final Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
.super Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "Readonly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "Readonly"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
