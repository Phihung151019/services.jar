.class public Lcom/android/server/chimera/HeavyLaunchCounter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field private static final DELAY:J = 0xa4cb80L


# instance fields
.field private mBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/util/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferSize:I

.field private mIsHeavyLaunch:Z

.field private mLastStartedUpTime:J

.field mLaunchCounter:I

.field private mLaunchPackageLimit:I

.field private mStartTime:J


# direct methods
.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchPackageLimit:I

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/util/Pair;

    iget v2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBuffer:Lcom/android/internal/util/RingBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchCounter:I

    iput-boolean v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mStartTime:J

    iput-wide v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLastStartedUpTime:J

    iput p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    iput p2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchPackageLimit:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mStartTime:J

    return-void
.end method


# virtual methods
.method public addLaunch(IJ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBuffer:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchCounter:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchCounter:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xa4cb80

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    iget p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchCounter:I

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Pair;

    array-length p3, p1

    iget v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    if-ne p3, v0, :cond_3

    sub-int/2addr v0, p2

    aget-object p3, p1, v0

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p3, 0x0

    aget-object v2, p1, p3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v1, p3

    :goto_0
    iget v2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    iget v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchPackageLimit:I

    if-lt p1, v0, :cond_1

    iput-boolean p2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mStartTime:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLastStartedUpTime:J

    return-void

    :cond_1
    iput-boolean p3, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    return-void

    :cond_2
    iput-boolean p3, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    :cond_3
    return-void
.end method

.method public getLastStartedUpTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLastStartedUpTime:J

    return-wide v0
.end method

.method public isHeavyLaunch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    return p0
.end method
