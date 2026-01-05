.class public final Lcom/android/server/display/OverlayDisplayAdapter$1$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$1;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$1;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$1$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$1;

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/display/OverlayDisplayAdapter;

    sget-object p1, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    iget-object p1, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
