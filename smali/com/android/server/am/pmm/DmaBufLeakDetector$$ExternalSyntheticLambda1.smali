.class public final synthetic Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getLargestDmaBufProcess()Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
