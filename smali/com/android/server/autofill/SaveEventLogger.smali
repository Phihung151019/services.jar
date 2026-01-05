.class public final Lcom/android/server/autofill/SaveEventLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mEventInternal:Ljava/util/Optional;

.field public final mSessionId:I

.field public final mSessionStartTimestamp:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/autofill/SaveEventLogger;->mSessionId:I

    new-instance p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    iput v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    const-wide/16 v1, -0x1

    iput-wide v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    iput v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    iput v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    iput-boolean v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    iput-boolean v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    iput-boolean v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    iput-boolean v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    iput-wide v2, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    iput-wide v2, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    iput-boolean v1, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    iput v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mServiceUid:I

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    iput-wide p2, p0, Lcom/android/server/autofill/SaveEventLogger;->mSessionStartTimestamp:J

    return-void
.end method


# virtual methods
.method public final logAndEndEvent()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const-string/jumbo v2, "SaveEventLogger"

    if-nez v1, :cond_0

    const-string/jumbo v0, "Shouldn\'t be logging AutofillSaveEventReported again for same event"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Log AutofillSaveEventReported: requestId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mRequestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/autofill/SaveEventLogger;->mSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAppPackageUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSaveUiTriggerIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mIsNewField="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSaveUiShownReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSaveUiNotShownReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSaveButtonClicked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mCancelButtonClicked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mDialogDismissed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsSaved="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mLatencySaveUiDisplayMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mLatencySaveRequestMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mLatencySaveFinishMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mIsFrameworkCreatedSaveInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mServiceUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mServiceUid:I

    invoke-static {v3, v4, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    iget v6, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mRequestId:I

    iget v8, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mAppPackageUid:I

    iget v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    int-to-long v9, v2

    iget-wide v11, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mFlag:J

    iget-boolean v13, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    iget v14, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiShownReason:I

    iget v15, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiNotShownReason:I

    iget-boolean v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    iget-boolean v3, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    iget-boolean v4, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    iget-boolean v5, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    move/from16 v16, v2

    move/from16 v17, v3

    iget-wide v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    iget-boolean v7, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    iget v1, v1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mServiceUid:I

    move/from16 v19, v5

    const/16 v5, 0x25e

    move/from16 v26, v7

    iget v7, v0, Lcom/android/server/autofill/SaveEventLogger;->mSessionId:I

    move/from16 v27, v1

    move-wide/from16 v24, v2

    move/from16 v18, v4

    invoke-static/range {v5 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJJZIIZZZZJJJZI)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    return-void
.end method

.method public final maybeSetSaveUiNotShownReason(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
