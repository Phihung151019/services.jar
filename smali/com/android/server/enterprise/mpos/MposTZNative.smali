.class Lcom/android/server/enterprise/mpos/MposTZNative;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mIsLoaded:Z

.field public mMOPTZNativePtr_:J

.field public final mProcessName:Ljava/lang/String;

.field public final mRecvBufSize:I

.field public final mRootName:Ljava/lang/String;

.field public final mSendBufSize:I

.field public final mTAId:I

.field public final mTATechnology:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "MposTZNative constructor: taId = "

    const-string/jumbo v1, "MposTZNative"

    invoke-static {p1, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mTAId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    iput p2, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mSendBufSize:I

    iput p6, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mRecvBufSize:I

    iput-object p3, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mTATechnology:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mRootName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mProcessName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    return-void
.end method

.method private native mposNativeProcessTACommand(Lcom/samsung/android/knox/mpos/TACommandRequest;Lcom/samsung/android/knox/mpos/TACommandResponse;)Z
.end method


# virtual methods
.method public final loadTA(Landroid/content/Context;IJJ)Z
    .locals 15

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    iget-wide v5, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v11, 0x0

    cmp-long v5, v5, v11

    const/4 v13, 0x1

    if-eqz v5, :cond_0

    const-string/jumbo v0, "MposTZNative"

    const-string/jumbo v1, "MposTZNative::loadTA called for TA that is already loaded. Call Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_0
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v1, v5

    const/4 v14, 0x0

    if-gtz v7, :cond_3

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    long-to-int v1, v1

    long-to-int v4, v3

    iget v5, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mTAId:I

    iget v6, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mSendBufSize:I

    iget v7, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mRecvBufSize:I

    iget-object v8, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mTATechnology:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mRootName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mProcessName:Ljava/lang/String;

    move-object v0, p0

    move/from16 v2, p2

    move v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/enterprise/mpos/MposTZNative;->mposNativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_2

    const-string/jumbo v0, "MposTZNative"

    const-string v1, "Error: mposNativeCreateTLCommunicationContext failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_2
    const-class v1, Lcom/android/server/enterprise/mpos/MposTZNative;

    monitor-enter v1

    :try_start_0
    iput-boolean v13, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "MposTZNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MposTZNative::loadTA: mMOPTZNativePtr_ = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_0
    const-string/jumbo v0, "MposTZNative"

    const-string/jumbo v1, "MposTZNative::loadTA : cannot get ta offset or size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14
.end method

.method public native mposNativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native mposNativeDestroyTLCommunicationContext()V
.end method

.method public final processTACommand(Lcom/samsung/android/knox/mpos/TACommandRequest;)Lcom/samsung/android/knox/mpos/TACommandResponse;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MposTZNative::processTACommand: request = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; mMOPTZNativePtr_ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MposTZNative"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/knox/mpos/TACommandResponse;

    invoke-direct {v0}, Lcom/samsung/android/knox/mpos/TACommandResponse;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/mpos/MposTZNative;->mposNativeProcessTACommand(Lcom/samsung/android/knox/mpos/TACommandRequest;Lcom/samsung/android/knox/mpos/TACommandResponse;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MposTZNative::processTACommand: ret: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", response: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final unloadTA()V
    .locals 6

    const-string/jumbo v0, "MposTZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    const-class v1, Lcom/android/server/enterprise/mpos/MposTZNative;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/mpos/MposTZNative;->mposNativeDestroyTLCommunicationContext()V

    iput-wide v4, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mMOPTZNativePtr_:J

    const-string/jumbo p0, "MposTZNative"

    const-string/jumbo v0, "MposTZNative::unloadTA called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    const-string/jumbo v2, "MposTZNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/enterprise/mpos/MposTZNative;->mIsLoaded:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
