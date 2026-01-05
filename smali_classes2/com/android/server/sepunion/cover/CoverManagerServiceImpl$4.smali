.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 0

    const/4 p0, -0x4

    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    return-void
.end method
