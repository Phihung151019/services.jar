.class public final Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCounters:Ljava/util/Map;

.field public final mEnd:J

.field public final mStart:J


# direct methods
.method public constructor <init>(JJLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mStart:J

    iput-wide p3, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mEnd:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mCounters:Ljava/util/Map;

    return-void
.end method
