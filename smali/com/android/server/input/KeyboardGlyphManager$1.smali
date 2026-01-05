.class public final Lcom/android/server/input/KeyboardGlyphManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyboardGlyphManager;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardGlyphManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/KeyboardGlyphManager$1;->this$0:Lcom/android/server/input/KeyboardGlyphManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager$1;->this$0:Lcom/android/server/input/KeyboardGlyphManager;

    iget-object p1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataLoaded:Z

    iget-object p2, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
