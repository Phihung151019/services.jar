.class public final Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public mBufferCount:I

.field public mUpdateServiceRequired:Z

.field public final synthetic this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    iput-boolean p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized acquire()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mBufferCount:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    iput-boolean v2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->mUpdateServiceRequired:Z

    move v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
