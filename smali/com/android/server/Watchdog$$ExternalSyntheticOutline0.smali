.class public abstract synthetic Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;
    .locals 1

    new-instance v0, Lcom/android/server/ServiceThread;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    return-object v0
.end method
