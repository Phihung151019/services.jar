.class public final Lcom/android/server/am/OomAdjusterDebugLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public final mOomAdjuster:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iput-object p2, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    return-void
.end method


# virtual methods
.method public final logProcStateChanged(IIIIII)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    invoke-static {v0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x75a0

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const-string/jumbo p1, "procStateChanged"

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterDebugLogger;->maybeLogStacktrace(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long p0, p0

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final maybeLogStacktrace(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ": "

    invoke-static {p1, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/app/StackTrace;

    const-string v0, "Called here"

    invoke-direct {p1, v0}, Landroid/app/StackTrace;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "am_stack"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final shouldLog(I)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterDebugLogger;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    if-gt v0, v2, :cond_3

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method
