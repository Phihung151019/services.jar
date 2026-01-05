.class public final Lcom/android/server/am/pmm/PersonalizedMemoryManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mChangeObserver:Lcom/android/server/am/pmm/PersonalizedMemoryManager$OnDeviceAIChangeObserver;

.field public mContext:Landroid/content/Context;

.field public mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

.field public mMemoryEventHandler:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventHandler;

.field public mMemoryEventThread:Lcom/android/server/ServiceThread;


# virtual methods
.method public final onMemoryEvent(Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mMemoryEventHandler:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
