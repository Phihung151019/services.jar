.class public final synthetic Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessErrorStateRecord;

.field public final synthetic f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    iput-object p2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iput-object p3, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    iget-object v2, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    iput-object p0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    iget-object p0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v0, "anr"

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
