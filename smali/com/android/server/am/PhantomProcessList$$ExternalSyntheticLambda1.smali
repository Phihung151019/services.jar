.class public final synthetic Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/PhantomProcessList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/PhantomProcessList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/PhantomProcessList;

    return-void
.end method


# virtual methods
.method public final onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/PhantomProcessList;

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/PhantomProcessRecord;

    if-nez p0, :cond_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "Process error"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    :goto_0
    monitor-exit v0

    :goto_1
    const/4 p0, 0x0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
