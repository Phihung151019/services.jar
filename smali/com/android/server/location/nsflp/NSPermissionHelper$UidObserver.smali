.class public final Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mUidState:Ljava/util/HashMap;


# virtual methods
.method public final onUidActive(I)V
    .locals 0

    return-void
.end method

.method public final onUidCachedChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onUidGone(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onUidIdle(IZ)V
    .locals 0

    return-void
.end method

.method public final onUidProcAdjChanged(II)V
    .locals 0

    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 0

    iget-object p3, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    if-nez p3, :cond_0

    new-instance p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput p2, p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->state:I

    iput p5, p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->capability:I

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iput p2, p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->state:I

    iput p5, p3, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->capability:I

    return-void
.end method
