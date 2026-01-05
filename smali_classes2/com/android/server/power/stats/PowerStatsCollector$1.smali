.class public final Lcom/android/server/power/stats/PowerStatsCollector$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/PowerStatsCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsCollector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$1;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    return-void
.end method


# virtual methods
.method public final onAfterIsolatedUidRemoved(II)V
    .locals 2

    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$1;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    iget-object p2, p2, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;II)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBeforeIsolatedUidRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onIsolatedUidAdded(II)V
    .locals 0

    return-void
.end method
