.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/PackageWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/PackageWatchdog;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Ljava/lang/Runnable;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    sget-object v0, Lcom/android/server/PackageWatchdog;->sPackageWatchdogLock:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->saveToFile()Z

    return-void

    :pswitch_1
    sget-object v0, Lcom/android/server/PackageWatchdog;->sPackageWatchdogLock:Ljava/lang/Object;

    const-string/jumbo v0, "scheduled"

    invoke-virtual {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    return-void

    :pswitch_2
    sget-object v0, Lcom/android/server/PackageWatchdog;->sPackageWatchdogLock:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->checkAndMitigateNativeCrashes()V

    return-void

    :pswitch_3
    sget-object v0, Lcom/android/server/PackageWatchdog;->sPackageWatchdogLock:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->checkAndMitigateNativeCrashes()V

    return-void

    :pswitch_4
    invoke-static {p0}, Lcom/android/server/PackageWatchdog;->$r8$lambda$gJ37k2zmlFG8nBixsI_xMYfaYp0(Lcom/android/server/PackageWatchdog;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
