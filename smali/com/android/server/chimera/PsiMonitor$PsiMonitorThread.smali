.class public final Lcom/android/server/chimera/PsiMonitor$PsiMonitorThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/PsiMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/PsiMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/PsiMonitor$PsiMonitorThread;->this$0:Lcom/android/server/chimera/PsiMonitor;

    const-string p1, "ChimeraPsiMonitorThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/chimera/PsiMonitor$PsiMonitorThread;->this$0:Lcom/android/server/chimera/PsiMonitor;

    invoke-static {v0}, Lcom/android/server/chimera/PsiMonitor;->-$$Nest$mnativeWaitForEvent(Lcom/android/server/chimera/PsiMonitor;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "ChimeraPsiMonitor"

    const-string v1, "ChimeraPsiMonitor has broken."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/chimera/PsiMonitor$PsiMonitorThread;->this$0:Lcom/android/server/chimera/PsiMonitor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/chimera/PsiMonitor;->mAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/chimera/PsiMonitor;->mIsMonitoring:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/chimera/PsiMonitor$PsiMonitorThread;->this$0:Lcom/android/server/chimera/PsiMonitor;

    iget-object v1, v1, Lcom/android/server/chimera/PsiMonitor;->mPsiEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/PsiMonitor$Event;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/chimera/PsiMonitor$Event;->mCallback:Lcom/android/server/chimera/SystemEventListener$1;

    iget v4, v3, Lcom/android/server/chimera/SystemEventListener$1;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    iget-object v3, v3, Lcom/android/server/chimera/SystemEventListener$1;->this$0:Lcom/android/server/chimera/SystemEventListener;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$msendPsiMemEvent(Lcom/android/server/chimera/SystemEventListener;I)V

    goto :goto_1

    :pswitch_0
    const/4 v4, 0x0

    iget-object v3, v3, Lcom/android/server/chimera/SystemEventListener$1;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {v3, v4}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$msendPsiMemEvent(Lcom/android/server/chimera/SystemEventListener;I)V

    iget-object v3, v3, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-wide v1, v0, Lcom/android/server/chimera/PsiMonitor$Event;->mMaxExecutionTimeNanos:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iput-wide v3, v0, Lcom/android/server/chimera/PsiMonitor$Event;->mMaxExecutionTimeNanos:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
