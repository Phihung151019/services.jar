.class public final synthetic Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/ProcessCpuTracker;

.field public final synthetic f$1:Landroid/util/SparseBooleanArray;

.field public final synthetic f$2:Lcom/android/internal/os/anr/AnrLatencyTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Lcom/android/internal/os/anr/AnrLatencyTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/os/ProcessCpuTracker;

    iput-object p2, p0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseBooleanArray;

    iput-object p3, p0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/os/anr/AnrLatencyTracker;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v1, p0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Lcom/android/server/am/StackTracesDumpHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/os/anr/AnrLatencyTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->processCpuTrackerMethodsCalled()V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0xc8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    monitor-enter v0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    invoke-virtual {v0, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v5

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_1

    iget v5, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Skipping next CPU consuming process, not a java proc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->processCpuTrackerMethodsReturned()V

    :cond_3
    return-object v2

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
