.class public final synthetic Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/OomAdjuster;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/server/am/OomAdjuster;->setProcessGroup(IILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-nez p1, :cond_1

    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PhantomProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v6, v4, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    iget-object v4, v4, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v0, v4}, Lcom/android/server/am/OomAdjuster;->setProcessGroup(IILjava/lang/String;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    monitor-exit v1

    return v2

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
