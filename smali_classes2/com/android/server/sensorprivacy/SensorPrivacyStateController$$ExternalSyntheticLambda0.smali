.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyStateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;->callback(Z)V

    return-void
.end method
