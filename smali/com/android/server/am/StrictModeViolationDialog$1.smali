.class public final Lcom/android/server/am/StrictModeViolationDialog$1;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/StrictModeViolationDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/StrictModeViolationDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v0, v0, Lcom/android/server/am/StrictModeViolationDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v1, v1, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    iget-object v2, v1, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v0, v0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    iget-object p0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method
