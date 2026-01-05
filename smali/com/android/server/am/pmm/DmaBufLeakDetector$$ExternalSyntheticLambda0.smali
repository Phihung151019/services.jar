.class public final synthetic Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;JLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    iput-wide p2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getLargestDmaBufProcess()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->hasLeak(F)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;->f$1:J

    iput-wide v3, v1, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastLeakTime:J

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsReporting:Z

    new-instance p0, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, v0, v2}, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v0, "DmaBufLeakDetector"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
