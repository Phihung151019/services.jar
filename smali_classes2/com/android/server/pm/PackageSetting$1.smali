.class public final Lcom/android/server/pm/PackageSetting$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/server/pm/PackageSetting;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    return-object v0
.end method
