.class public final synthetic Lcom/android/server/display/plugin/PluginEventStorage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(JJLjava/util/Map;)V

    return-object v0
.end method
