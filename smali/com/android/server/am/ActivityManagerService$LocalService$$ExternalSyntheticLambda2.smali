.class public final synthetic Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

.field public final synthetic f$1:Landroid/app/IUnsafeIntentStrictModeCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/Intent;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$LocalService;Landroid/app/IUnsafeIntentStrictModeCallback;ILandroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$1:Landroid/app/IUnsafeIntentStrictModeCallback;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$3:Landroid/content/Intent;

    iput p5, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$1:Landroid/app/IUnsafeIntentStrictModeCallback;

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$3:Landroid/content/Intent;

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$4:I

    sget v4, Lcom/android/server/am/ActivityManagerService$LocalService;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v1, v2, v3}, Landroid/app/IUnsafeIntentStrictModeCallback;->onUnsafeIntent(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStrictModeCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStrictModeCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
