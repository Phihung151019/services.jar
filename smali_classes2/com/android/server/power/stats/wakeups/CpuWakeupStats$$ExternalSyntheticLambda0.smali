.class public final synthetic Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/LongSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    return-void
.end method


# virtual methods
.method public final getAsLong()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    return-wide v0
.end method
