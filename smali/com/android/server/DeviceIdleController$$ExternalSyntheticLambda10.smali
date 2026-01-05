.class public final synthetic Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    sget-boolean p0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    iget-boolean p0, p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;->active:Z

    return p0
.end method
