.class public final Lcom/android/server/autofill/FieldClassificationEventLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mEventInternal:Ljava/util/Optional;


# virtual methods
.method public final logAndEndEvent()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "FieldClassificationEventLogger"

    if-nez v0, :cond_0

    const-string/jumbo p0, "Shouldn\'t be logging AutofillFieldClassificationEventInternal again for same event"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Log AutofillFieldClassificationEventReported: mLatencyClassificationRequestMillis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mCountClassifications="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRequestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNextFillRequestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAppPackageUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsSessionGc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mIsSessionGc:Z

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_1
    iget-wide v5, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    iget v7, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    iget v8, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    iget v9, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    iget v10, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    iget v11, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    iget v12, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mStatus:I

    iget-boolean v13, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mIsSessionGc:Z

    const/16 v4, 0x293

    invoke-static/range {v4 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIIIIZ)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public final startNewLogForRequest()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FieldClassificationEventLogger"

    const-string v1, "FieldClassificationEventLogger is not empty before starting for a new request"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mLatencyClassificationRequestMillis:J

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mCountClassifications:I

    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mSessionId:I

    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mRequestId:I

    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mNextFillRequestId:I

    iput v1, v0, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mAppPackageUid:I

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method
