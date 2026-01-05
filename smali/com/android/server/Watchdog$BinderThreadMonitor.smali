.class public final Lcom/android/server/Watchdog$BinderThreadMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# virtual methods
.method public final monitor()V
    .locals 0

    invoke-static {}, Landroid/os/Binder;->blockUntilThreadAvailable()V

    return-void
.end method
