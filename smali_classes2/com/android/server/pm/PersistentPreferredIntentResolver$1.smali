.class public final Lcom/android/server/pm/PersistentPreferredIntentResolver$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>(Lcom/android/server/pm/PersistentPreferredIntentResolver;)V

    return-object v0
.end method
