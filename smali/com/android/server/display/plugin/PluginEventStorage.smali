.class public final Lcom/android/server/display/plugin/PluginEventStorage;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field public final mCounters:Ljava/util/Map;

.field public final mEventTimes:Ljava/util/Map;

.field public final mEvents:Lcom/android/internal/util/RingBuffer;

.field public mTimeFrameStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/server/display/plugin/PluginEventStorage;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/server/display/plugin/PluginEventStorage$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/display/plugin/PluginEventStorage$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEvents:Lcom/android/internal/util/RingBuffer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEventTimes:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onValueUpdated(Lcom/android/server/display/plugin/PluginType;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long v4, v0, v2

    iget-wide v6, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEvents:Lcom/android/internal/util/RingBuffer;

    new-instance v5, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    iget-wide v6, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    add-long v8, v6, v2

    iget-object v10, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    invoke-direct/range {v5 .. v10}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(JJLjava/util/Map;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_0
    iput-wide v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;

    iget-object v3, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEventTimes:Ljava/util/Map;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput v5, v2, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mEventCounter:I

    iput v5, v2, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mFastEventCounter:I

    iget-object v5, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v5, v2, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mEventCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mEventCounter:I

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    iget v3, v2, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mFastEventCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mFastEventCounter:I

    :cond_3
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEventTimes:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
