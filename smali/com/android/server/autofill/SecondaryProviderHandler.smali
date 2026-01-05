.class public final Lcom/android/server/autofill/SecondaryProviderHandler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;


# instance fields
.field public final mCallback:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;

.field public mLastFlag:I

.field public final mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/android/server/autofill/Session$$ExternalSyntheticLambda0;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/autofill/RemoteFillService;

    move-object v4, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    move-object v2, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;ZLandroid/content/ComponentName;)V

    iput-object v0, v4, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    iput-object p4, v4, Lcom/android/server/autofill/SecondaryProviderHandler;->mCallback:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Creating a secondary provider handler with component name, "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SecondaryProviderHandler"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final onFillRequestFailure(ILjava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onFillRequestSuccess(ILandroid/service/autofill/FillResponse;I)V
    .locals 7

    const-string/jumbo p1, "SecondaryProviderHandler"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Received a fill response: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mCallback:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;

    iget p0, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mLastFlag:I

    iget-object p1, p1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/Session;

    const-string p3, "Call to Session#onSecondaryFillResponse() rejected - session: "

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/FillResponseEventLogger;->startLogForNewResponse()V

    iget-object v1, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v2

    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget v2, p1, Lcom/android/server/autofill/Session;->uid:I

    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    iget-object v1, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTimestamp:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    sub-long/2addr v3, v5

    iget-object v1, p1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    long-to-int v3, v3

    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/16 v5, 0xb

    invoke-direct {v4, v3, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v5, 0x4

    invoke-direct {v4, v3, v5}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean v1, p1, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_1

    const-string p0, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " destroyed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 p2, 0x5

    invoke-virtual {p0, p2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    iget-object p0, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object p3

    const/4 v1, 0x0

    if-nez p3, :cond_2

    move p3, v1

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    :goto_0
    iget-object v3, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v3, v3, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v5, 0x6

    invoke-direct {v4, p3, v5}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v3, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v3, v3, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, p3, v5}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p3, p1, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    if-nez p3, :cond_3

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p3, p1, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    :cond_3
    iget-object p3, p1, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v3

    invoke-virtual {p3, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, p2, v2, v1, v1}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V

    iget-object p2, p1, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object p3, p1, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/autofill/ViewState;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    :cond_4
    iget-object p0, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object p2, p0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance p3, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {p3, v1, p0}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p1, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSaveRequestFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 0

    return-void
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    iget-object p0, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    return-void
.end method
