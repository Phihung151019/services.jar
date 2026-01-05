.class public final Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/AppOpsManager$HistoricalOpsVisitor;


# instance fields
.field public accessTimePerOp:Ljava/util/concurrent/ConcurrentHashMap;

.field public curPackageName:Ljava/lang/String;

.field public curUid:I

.field public filterPackageName:Ljava/lang/String;

.field public filterUid:I


# virtual methods
.method public final visitHistoricalAttributionOps(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->curPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->filterPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public final visitHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->accessTimePerOp:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessAt(I)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object p1

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final visitHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 0

    return-void
.end method

.method public final visitHistoricalPackageOps(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .locals 2

    iget v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->curUid:I

    iget v1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->filterUid:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->curPackageName:Ljava/lang/String;

    return-void
.end method

.method public final visitHistoricalUidOps(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->curUid:I

    return-void
.end method
