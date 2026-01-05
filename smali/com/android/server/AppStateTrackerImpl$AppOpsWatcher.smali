.class public final Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 p1, 0x1

    const/4 p4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x46

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :catch_0
    :cond_0
    move v0, p4

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "battery.value_app_background_restricted"

    invoke-static {v1, p2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    move v4, p1

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    if-ne v4, v0, :cond_3

    move p1, p4

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v0, v2, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :goto_2
    invoke-virtual {v2}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    :goto_3
    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_5
    :goto_4
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
