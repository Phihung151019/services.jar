.class public final Lcom/android/server/ThreadPriorityBooster$1;
.super Ljava/lang/ThreadLocal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    invoke-direct {p0}, Lcom/android/server/ThreadPriorityBooster$PriorityState;-><init>()V

    return-object p0
.end method
