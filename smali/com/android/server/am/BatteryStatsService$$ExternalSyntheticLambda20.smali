.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Lcom/android/internal/app/IBatteryStatsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/internal/app/IBatteryStatsCallback;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$1:Lcom/android/internal/app/IBatteryStatsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$1:Lcom/android/internal/app/IBatteryStatsCallback;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryStatsCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;->f$1:Lcom/android/internal/app/IBatteryStatsCallback;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryStatsCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
