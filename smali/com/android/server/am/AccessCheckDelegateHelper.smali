.class public final Lcom/android/server/am/AccessCheckDelegateHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

.field public final mActiveInstrumentation:Ljava/util/List;

.field public final mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public final mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerProcLock;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerProcLock;Ljava/util/List;Lcom/android/server/appop/AppOpsService;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iput-object p2, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mActiveInstrumentation:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iput-object p4, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    return-void
.end method


# virtual methods
.method public final getAccessCheckDelegateLPr()Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    invoke-direct {v0}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    iget-object v1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->setCheckOpsDelegate(Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;)V

    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget-object v1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    return-object p0
.end method

.method public final onInstrumentationFinished(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget v3, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    const/4 v4, 0x0

    if-ne v3, p1, :cond_0

    iget-object v3, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePackage:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move p2, v4

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    :try_start_2
    iget-object p2, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iput-object v2, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePackage:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePermissions:[Ljava/lang/String;

    iput-boolean v4, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :cond_1
    :goto_1
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateAndOwnerUid(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iput-object v2, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p0

    :cond_2
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->hasDelegateOrOverrides()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/AccessCheckDelegateHelper;->removeAccessCheckDelegateLPr()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw p0

    :cond_3
    :goto_4
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_5
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final removeAccessCheckDelegateLPr()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    iget-object v1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->setCheckOpsDelegate(Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;)V

    iget-object p0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mCheckPermissionDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
