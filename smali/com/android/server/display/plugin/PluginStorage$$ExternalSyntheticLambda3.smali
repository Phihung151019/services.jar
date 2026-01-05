.class public final synthetic Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Map;)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda3;->f$0:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda3;->f$0:Ljava/util/Map;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/android/server/display/plugin/PluginType;

    check-cast p2, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    new-instance v0, Ljava/util/HashMap;

    iget-object p2, p2, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/server/display/plugin/PluginType;

    check-cast p2, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    new-instance v0, Ljava/util/HashMap;

    iget-object p2, p2, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/display/plugin/PluginEventStorage;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/server/display/plugin/PluginEventStorage;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    iget-wide v3, p2, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p2, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(JJLjava/util/Map;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
