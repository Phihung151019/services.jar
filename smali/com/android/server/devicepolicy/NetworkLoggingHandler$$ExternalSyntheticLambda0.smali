.class public final synthetic Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    iput-wide p2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    iget-wide v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;->f$1:J

    sget p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->LOG_NETWORK_EVENT_MSG:I

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object p0, v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    if-lez p0, :cond_0

    iget-object p0, v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    cmp-long p0, v4, v1

    if-gtz p0, :cond_0

    iget-object p0, v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v3}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
