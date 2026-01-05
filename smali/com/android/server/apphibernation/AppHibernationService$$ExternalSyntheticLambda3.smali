.class public final synthetic Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/apphibernation/AppHibernationService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/Object;II)V
    .locals 0

    iput p4, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    iput-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    iget-object v2, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v0, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$2:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v3, 0x80000

    const-string/jumbo v5, "unhibernatePackage"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    :try_start_0
    iget-object v5, v1, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v6, 0x200ca200

    invoke-interface {v5, v2, v6, v7, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v5, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v4, v3

    :try_start_1
    iget-object v3, v1, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v8, v7

    const/4 v7, 0x0

    move-wide/from16 v22, v8

    const/4 v8, 0x0

    const/4 v9, -0x1

    move/from16 v19, v0

    :try_start_2
    invoke-interface/range {v3 .. v19}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v3, v1, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-interface/range {v3 .. v19}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v22, v4

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide/from16 v22, v4

    goto :goto_0

    :catchall_2
    move-exception v0

    move-wide/from16 v22, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-wide/from16 v22, v3

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    iget-object v2, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    iget v0, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$2:I

    invoke-virtual {v2}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->readHibernationStates()Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v4, v1, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->initializeUserHibernationStates(ILjava/util/List;)V

    iget-object v2, v1, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/apphibernation/UserLevelState;

    iget-object v4, v2, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/apphibernation/GlobalLevelState;

    iget-boolean v5, v5, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    if-eqz v5, :cond_0

    iget-boolean v2, v2, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_3

    :cond_1
    monitor-exit v3

    return-void

    :goto_3
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
