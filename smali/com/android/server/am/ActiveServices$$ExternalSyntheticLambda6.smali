.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActiveServices;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/ActiveServices;

    iput p2, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;->f$2:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/ActiveServices;

    iget v1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;->f$1:I

    iget-boolean p0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;->f$2:Z

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v2, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    if-gt v2, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundForegroundServiceStartsPermission:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x3d

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    iget-wide p0, v1, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_3

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p0, v1

    if-gez v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p0

    iget-object p0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    cmp-long p0, v1, p0

    if-gez p0, :cond_3

    const/16 p0, 0x43

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {v2}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
