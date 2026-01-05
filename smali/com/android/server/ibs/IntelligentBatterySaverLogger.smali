.class public final Lcom/android/server/ibs/IntelligentBatterySaverLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;


# instance fields
.field public mIBSLog:Landroid/util/LocalLog;

.field public mIsUsed:Z


# virtual methods
.method public final add(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
