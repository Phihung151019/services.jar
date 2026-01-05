.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppProfiler;

.field public final synthetic f$1:Z

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppProfiler;

    iput-boolean p2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$1:Z

    iput-wide p3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$3:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppProfiler;

    iget-boolean v1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$1:Z

    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda1;->f$3:J

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object p0, v2, Lcom/android/server/am/ProcessProfileRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz p0, :cond_2

    move p0, v1

    iget v1, v2, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    const/16 p1, 0x14

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    if-nez p0, :cond_1

    const-wide/16 p0, 0x3e8

    add-long/2addr p0, v5

    cmp-long p0, v3, p0

    if-gtz p0, :cond_1

    const-wide/32 p0, 0x124f80

    add-long/2addr v5, p0

    cmp-long p0, v3, v5

    if-lez p0, :cond_2

    :cond_1
    iput v1, v2, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    const/4 p0, 0x2

    iput p0, v2, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    iget-object p0, v0, Lcom/android/server/am/AppProfiler;->mPendingPssOrRssProfiles:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method
