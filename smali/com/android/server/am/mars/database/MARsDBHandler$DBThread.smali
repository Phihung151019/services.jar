.class public final Lcom/android/server/am/mars/database/MARsDBHandler$DBThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final run()V
    .locals 2

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    new-instance v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sget-object v1, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    iput-object v1, v0, Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;->m:Lcom/android/server/am/mars/database/MARsDBManager;

    iput-object v0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
