.class public final Lcom/android/server/SEAMService$1$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()V

    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()V

    return-void
.end method
