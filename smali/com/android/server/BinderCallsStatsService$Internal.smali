.class public Lcom/android/server/BinderCallsStatsService$Internal;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public final mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    new-instance v0, Lcom/android/server/CustomizedBinderCallsStatsInternal;

    invoke-direct {v0, p1, p2}, Lcom/android/server/CustomizedBinderCallsStatsInternal;-><init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    return-void
.end method


# virtual methods
.method public reportCpuUsage(I)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    iget-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "CustomizedBinderCallsStatsInternal"

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xd6d8

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const-string p0, "1 minute has NOT pass since last binder stats."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reportCpuUsage() : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportProcessDied(IILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/BinderCallsStats;->reportProcessDied(IILjava/lang/String;)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$Internal;->mCustomizedBinderCallsStatsInternal:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->writeToFile()V

    return-void
.end method
