.class public final Lcom/android/server/am/LowMemDetector$LowMemThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mIsTracingMemCriticalLow:Z

.field public final synthetic this$0:Lcom/android/server/am/LowMemDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/LowMemDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    const-string/jumbo p1, "LowMemThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$mwaitForPressure(Lcom/android/server/am/LowMemDetector;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    const-wide/16 v3, 0x40

    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->mIsTracingMemCriticalLow:Z

    if-nez v5, :cond_1

    const-string/jumbo v5, "criticalLowMemory"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    iget-boolean v5, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->mIsTracingMemCriticalLow:Z

    if-eqz v5, :cond_2

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->mIsTracingMemCriticalLow:Z

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    iput-boolean v2, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    iget-object v1, v1, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    iput v0, v2, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
