.class public final Lcom/android/server/biometrics/sensors/face/UsageStats;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAcceptCount:I

.field public mAcceptLatency:J

.field public mAuthAttemptCount:I

.field public mAuthenticationEvents:Ljava/util/ArrayDeque;

.field public mContext:Landroid/content/Context;

.field public mErrorCount:I

.field public mErrorFrequencyMap:Landroid/util/SparseIntArray;

.field public mErrorLatency:J

.field public mErrorLatencyMap:Landroid/util/SparseLongArray;

.field public mRejectCount:I

.field public mRejectLatency:J


# virtual methods
.method public final addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V
    .locals 5

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthAttemptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthAttemptCount:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mAuthenticated:Z

    iget-wide v1, p1, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mLatency:J

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    return-void

    :cond_1
    iget p1, p1, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mError:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:I

    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:J

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorFrequencyMap:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatencyMap:Landroid/util/SparseLongArray;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, p1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p0, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method
