.class public final Lcom/android/server/autofill/FillRequestEventLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mSessionId:I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final logAndEndEvent()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const-string v2, "FillRequestEventLogger"

    if-nez v1, :cond_0

    const-string/jumbo v0, "Shouldn\'t be logging AutofillFillRequestReported again for same event"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Log AutofillFillRequestReported: requestId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAutofillServiceUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAutofillServiceUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mInlineSuggestionHostUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mInlineSuggestionHostUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mIsAugmented="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsAugmented:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsClientSuggestionFallback=false mIsFillDialogEligible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsFillDialogEligible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mRequestTriggerReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestTriggerReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mFlags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLatencyFillRequestSentMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mLatencyFillRequestSentMillis:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAppPackageUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAppPackageUid:I

    invoke-static {v3, v4, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    iget v6, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestId:I

    iget v8, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAutofillServiceUid:I

    iget v9, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mInlineSuggestionHostUid:I

    iget-boolean v10, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsAugmented:Z

    iget-boolean v12, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsFillDialogEligible:Z

    iget v13, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestTriggerReason:I

    iget v2, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mFlags:I

    int-to-long v14, v2

    iget v2, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mLatencyFillRequestSentMillis:I

    iget v1, v1, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAppPackageUid:I

    iget v7, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mSessionId:I

    const/4 v11, 0x0

    const/16 v5, 0x25c

    move/from16 v17, v1

    move/from16 v16, v2

    invoke-static/range {v5 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIZZZIJII)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public final maybeSetRequestTriggerReason(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final startLogForNewRequest()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FillRequestEventLogger"

    const-string v1, "FillRequestEventLogger is not empty before starting for a new request"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAppPackageUid:I

    iput v1, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mAutofillServiceUid:I

    iput v1, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mInlineSuggestionHostUid:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsAugmented:Z

    iput-boolean v2, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mIsFillDialogEligible:Z

    iput v2, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mRequestTriggerReason:I

    iput v1, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mFlags:I

    iput v1, v0, Lcom/android/server/autofill/FillRequestEventLogger$FillRequestEventInternal;->mLatencyFillRequestSentMillis:I

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method
