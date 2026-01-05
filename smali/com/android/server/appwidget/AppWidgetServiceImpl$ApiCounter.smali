.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallCount:Ljava/util/Map;

.field public mMaxCallsPerInterval:I

.field public mMaxProviders:I

.field public final mMonotonicClock:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$$ExternalSyntheticLambda0;

.field public mResetIntervalMs:J


# direct methods
.method public static -$$Nest$mgetOrCreateRecord(Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;
    .locals 2

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    invoke-direct {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;-><init>()V

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    return-object p0
.end method

.method public constructor <init>(IIJ)V
    .locals 2

    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    iput-wide p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxProviders:I

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMonotonicClock:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final tryApiCall(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxProviders:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    invoke-direct {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;-><init>()V

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMonotonicClock:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    iput v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    iput-wide v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    :cond_2
    iget v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    if-ge v0, p0, :cond_3

    const/4 p0, 0x1

    add-int/2addr v0, p0

    iput v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    return p0

    :cond_3
    :goto_0
    return v1
.end method
