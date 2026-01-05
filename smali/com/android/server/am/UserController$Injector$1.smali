.class public final Lcom/android/server/am/UserController$Injector$1;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Lcom/android/server/am/PreBootBroadcaster$1;

.field public mIndex:I

.field public final mIntent:Landroid/content/Intent;

.field public final mQuiet:Z

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTargets:Ljava/util/List;

.field public final mUserId:I

.field public final synthetic val$onFinish:Lcom/android/server/am/UserController$$ExternalSyntheticLambda19;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;IZLcom/android/server/am/UserController$$ExternalSyntheticLambda19;)V
    .locals 1

    iput-object p4, p0, Lcom/android/server/am/UserController$Injector$1;->val$onFinish:Lcom/android/server/am/UserController$$ExternalSyntheticLambda19;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    const/4 p4, 0x0

    iput p4, p0, Lcom/android/server/am/UserController$Injector$1;->mIndex:I

    new-instance p4, Lcom/android/server/am/PreBootBroadcaster$1;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, p0, v0}, Lcom/android/server/am/PreBootBroadcaster$1;-><init>(Lcom/android/server/am/UserController$Injector$1;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/server/am/UserController$Injector$1;->mHandler:Lcom/android/server/am/PreBootBroadcaster$1;

    iput-object p1, p0, Lcom/android/server/am/UserController$Injector$1;->mService:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    iput-boolean p3, p0, Lcom/android/server/am/UserController$Injector$1;->mQuiet:Z

    new-instance p3, Landroid/content/Intent;

    const-string/jumbo p4, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/am/UserController$Injector$1;->mIntent:Landroid/content/Intent;

    const p4, 0x2000100

    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 p4, 0x100000

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, p3, p4, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/UserController$Injector$1;->mTargets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector$1;->sendNext()V

    return-void
.end method

.method public final sendNext()V
    .locals 13

    iget v0, p0, Lcom/android/server/am/UserController$Injector$1;->mIndex:I

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector$1;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->mHandler:Lcom/android/server/am/PreBootBroadcaster$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$1;->val$onFinish:Lcom/android/server/am/UserController$$ExternalSyntheticLambda19;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda19;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "PreBootBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "User "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    const-string v4, " is no longer running; skipping remaining receivers"

    invoke-static {v3, v4, v0, v1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->mHandler:Lcom/android/server/am/PreBootBroadcaster$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$1;->val$onFinish:Lcom/android/server/am/UserController$$ExternalSyntheticLambda19;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda19;->run()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/UserController$Injector$1;->mQuiet:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->mHandler:Lcom/android/server/am/PreBootBroadcaster$1;

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector$1;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/am/UserController$Injector$1;->mIndex:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->mTargets:Ljava/util/List;

    iget v1, p0, Lcom/android/server/am/UserController$Injector$1;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/am/UserController$Injector$1;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const-string/jumbo v1, "PreBootBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Pre-boot of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    invoke-static {v2, v3, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x755d

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector$1;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x2710

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    const-string v7, ""

    const/4 v5, 0x0

    const/16 v6, 0xc9

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector$1;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController$Injector$1;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/UserController$Injector$1;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    iget v12, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v5, p0

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;ZIIII)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
