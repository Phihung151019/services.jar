.class public final synthetic Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/PhantomProcessList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/PhantomProcessList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/PhantomProcessList;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/PhantomProcessList;

    check-cast p1, Lcom/android/server/am/PhantomProcessRecord;

    check-cast p2, Lcom/android/server/am/PhantomProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v1, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    iget-wide v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    iget-wide p1, p2, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    cmp-long p0, v1, p1

    if-eqz p0, :cond_5

    if-gez p0, :cond_4

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    if-eq v0, p0, :cond_3

    sub-int/2addr v0, p0

    return v0

    :cond_3
    cmp-long p0, v1, p1

    if-eqz p0, :cond_5

    if-gez p0, :cond_4

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method
