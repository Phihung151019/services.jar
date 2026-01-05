.class public final Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/LogicalDisplayMapper;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->this$0:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->this$0:Lcom/android/server/display/LogicalDisplayMapper;

    iget-object p1, p1, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->this$0:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
