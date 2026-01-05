.class public final Lcom/android/server/am/compaction/SingleCompactionStats;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final mRandom:Ljava/util/Random;


# instance fields
.field public final mAnonMemFreedKBs:J

.field public final mCpuTimeMillis:F

.field public final mDeltaAnonRssKBs:J

.field public final mOomAdj:I

.field public final mOomAdjReason:I

.field public final mOrigAnonRss:J

.field public final mProcState:I

.field public final mProcessName:Ljava/lang/String;

.field public final mRssAfterCompaction:[J

.field public final mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

.field public final mZramConsumedKBs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/am/compaction/SingleCompactionStats;->mRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>([JLcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mRssAfterCompaction:[J

    iput-object p2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    iput-object p3, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcessName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mDeltaAnonRssKBs:J

    iput-wide p6, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mZramConsumedKBs:J

    iput-wide p8, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mAnonMemFreedKBs:J

    long-to-float p1, p12

    iput p1, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mCpuTimeMillis:F

    iput-wide p10, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOrigAnonRss:J

    iput p14, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcState:I

    iput p15, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdj:I

    move/from16 p1, p16

    iput p1, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdjReason:I

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 10
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mDeltaAnonRssKBs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mZramConsumedKBs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mAnonMemFreedKBs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v2, v2

    iget-wide v6, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOrigAnonRss:J

    long-to-double v8, v6

    div-double/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v2, v4

    long-to-double v6, v6

    div-double/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mCpuTimeMillis:F

    float-to-double v2, v2

    long-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mProcState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdj:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/compaction/SingleCompactionStats;->mOomAdjReason:I

    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
