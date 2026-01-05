.class public final synthetic Lcom/android/server/display/plugin/PluginManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/display/plugin/Plugin;

    invoke-interface {p1}, Lcom/android/server/display/plugin/Plugin;->onBootCompleted()V

    return-void
.end method
