.class public final Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public completedCount:J

.field public uptimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->uptimeMillis:J

    iput-wide v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;->completedCount:J

    return-void
.end method
