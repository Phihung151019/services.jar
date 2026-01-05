.class public final synthetic Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/powerstats/PowerStatsService$1;

.field public final synthetic f$1:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/powerstats/PowerStatsService$1;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/powerstats/PowerStatsService$1;

    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/powerstats/PowerStatsService$1;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda0;->f$1:Landroid/os/ResultReceiver;

    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v0, p0}, Lcom/android/server/powerstats/PowerStatsService;->getSupportedPowerMonitorsImpl(Landroid/os/ResultReceiver;)V

    return-void
.end method
