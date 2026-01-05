.class public final Lcom/android/server/am/mars/HistoryBuffer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final buffer:[Ljava/lang/String;

.field public pointer:I

.field public size:I

.field public final totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    iput v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->totalSize:I

    iput v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->pointer:I

    :try_start_0
    const-string/jumbo v1, "dalvik.vm.heapsize"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    const/16 v0, 0x1388

    goto :goto_1

    :cond_1
    const/16 v0, 0x3e8

    :goto_1
    iput v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->totalSize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->buffer:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getBuffer()[Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    iget v1, p0, Lcom/android/server/am/mars/HistoryBuffer;->totalSize:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->buffer:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/mars/HistoryBuffer;->pointer:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/android/server/am/mars/HistoryBuffer;->buffer:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/server/am/mars/HistoryBuffer;->pointer:I

    if-ge v2, v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    iget-object v4, p0, Lcom/android/server/am/mars/HistoryBuffer;->buffer:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized put(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->buffer:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/mars/HistoryBuffer;->pointer:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Lcom/android/server/am/mars/HistoryBuffer;->totalSize:I

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/mars/HistoryBuffer;->pointer:I

    iget v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    if-ge v0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
