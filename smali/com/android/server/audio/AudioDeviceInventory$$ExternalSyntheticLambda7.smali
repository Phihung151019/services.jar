.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiFunction;


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/audio/AdiDeviceState;

    check-cast p2, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    return-object p1
.end method
