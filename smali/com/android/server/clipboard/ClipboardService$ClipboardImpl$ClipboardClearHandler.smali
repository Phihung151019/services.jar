.class public final Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    const-string p0, "ClipboardService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClipboardClearHandler received unknown message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v3, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v0, :cond_1

    const/16 v0, 0x198

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;->this$1:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
