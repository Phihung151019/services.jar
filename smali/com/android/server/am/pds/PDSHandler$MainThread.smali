.class public final Lcom/android/server/am/pds/PDSHandler$MainThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mPriority:I


# virtual methods
.method public final run()V
    .locals 2

    iget p0, p0, Lcom/android/server/am/pds/PDSHandler$MainThread;->mPriority:I

    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    sget-object p0, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    new-instance v0, Lcom/android/server/am/pds/PDSHandler$MainHandler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    sget-object v1, Lcom/android/server/am/PDSController$PDSControllerHolder;->INSTANCE:Lcom/android/server/am/PDSController;

    iput-object v1, v0, Lcom/android/server/am/pds/PDSHandler$MainHandler;->mPDSController:Lcom/android/server/am/PDSController;

    iput-object v0, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
