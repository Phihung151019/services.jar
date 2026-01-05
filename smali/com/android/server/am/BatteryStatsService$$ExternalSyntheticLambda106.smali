.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/DoubleSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;->f$0:Lcom/android/server/am/BatteryStatsService;

    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getBatteryCapacity()I

    move-result p0

    int-to-double v0, p0

    return-wide v0
.end method
