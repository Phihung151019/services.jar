.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static emptyMap()Ljava/util/Map;
    .locals 2

    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>"

    invoke-static {v1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
