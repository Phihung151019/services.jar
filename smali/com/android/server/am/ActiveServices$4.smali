.class public final Lcom/android/server/am/ActiveServices$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic val$backgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field public final synthetic val$callerFg:Z

.field public final synthetic val$callingFeatureId:Ljava/lang/String;

.field public final synthetic val$callingPackage:Ljava/lang/String;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingProcessName:Ljava/lang/String;

.field public final synthetic val$callingProcessState:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$connection:Landroid/app/IServiceConnection;

.field public final synthetic val$fgRequired:Z

.field public final synthetic val$isBinding:Z

.field public final synthetic val$s:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$serviceIntent:Landroid/content/Intent;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;ILjava/lang/String;IZLandroid/app/BackgroundStartPrivileges;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingFeatureId:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iput-object p6, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iput-boolean p7, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iput p8, p0, Lcom/android/server/am/ActiveServices$4;->val$userId:I

    iput-boolean p9, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z

    iput-object p10, p0, Lcom/android/server/am/ActiveServices$4;->val$connection:Landroid/app/IServiceConnection;

    iput p11, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPid:I

    iput-object p12, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessName:Ljava/lang/String;

    iput p13, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessState:I

    iput-boolean p14, p0, Lcom/android/server/am/ActiveServices$4;->val$fgRequired:Z

    iput-object p15, p0, Lcom/android/server/am/ActiveServices$4;->val$backgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingFeatureId:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iget-object v7, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iget v9, p0, Lcom/android/server/am/ActiveServices$4;->val$userId:I

    iget-boolean v10, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$4;->val$connection:Landroid/app/IServiceConnection;

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    const/4 v2, 0x6

    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZI)Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/TransactionTooLargeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    throw v0

    :catch_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iget v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iget v6, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPid:I

    iget-object v7, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessState:I

    iget-boolean v9, p0, Lcom/android/server/am/ActiveServices$4;->val$fgRequired:Z

    iget-boolean v10, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$4;->val$backgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    iget-object v12, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IILjava/lang/String;IZZLandroid/app/BackgroundStartPrivileges;Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_5
    .catch Landroid/os/TransactionTooLargeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    :goto_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
