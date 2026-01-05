.class public final Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIsSuccess:Z

.field public final mMeminfoRaw:[J

.field public final mPid:I

.field public final mReclaimed:J

.field public final mResident:J


# direct methods
.method public constructor <init>(ILcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;)V
    .locals 10

    const-string v0, "Ignore "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [J

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->getMeminfoRaw(I)[J

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->calculateResident([J)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2, v1}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->calculateReclaimed([J)J

    move-result-wide v2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mIsSuccess:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    iput-wide v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    iput-wide v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    return-void

    :catchall_0
    move-exception p2

    move-wide v8, v4

    move-wide v4, v2

    move-wide v2, v8

    goto :goto_1

    :catch_0
    move-exception p2

    move-wide v8, v4

    move-wide v4, v2

    move-wide v2, v8

    goto :goto_0

    :catchall_1
    move-exception p2

    move-wide v4, v2

    goto :goto_1

    :catch_1
    move-exception p2

    move-wide v4, v2

    :goto_0
    :try_start_2
    const-string v6, "GMR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " due to exception "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    iput-wide v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    iput-wide v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    return-void

    :catchall_2
    move-exception p2

    :goto_1
    iput p1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mPid:I

    iput-object v1, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mMeminfoRaw:[J

    iput-wide v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mResident:J

    iput-wide v4, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mReclaimed:J

    throw p2
.end method
