.class public final Lcom/android/server/am/InstrumentationReporter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mPendingReports:Ljava/util/ArrayList;

.field public mThread:Lcom/android/server/am/InstrumentationReporter$MyThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final report(Lcom/android/server/am/InstrumentationReporter$Report;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mThread:Lcom/android/server/am/InstrumentationReporter$MyThread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/InstrumentationReporter$MyThread;

    invoke-direct {v1, p0}, Lcom/android/server/am/InstrumentationReporter$MyThread;-><init>(Lcom/android/server/am/InstrumentationReporter;)V

    iput-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mThread:Lcom/android/server/am/InstrumentationReporter$MyThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
