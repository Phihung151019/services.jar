.class public final Lcom/android/server/autofill/Session;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.implements Lcom/android/server/autofill/ViewState$Listener;
.implements Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
.implements Landroid/service/autofill/ValueFinder;
.implements Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;


# static fields
.field public static final mRequestId:Lcom/android/server/autofill/RequestId;

.field public static final sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final id:I

.field public mActivityToken:Landroid/os/IBinder;

.field public final mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

.field public mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

.field public mAugmentedAutofillableIds:Ljava/util/ArrayList;

.field public mAugmentedRequestsLogs:Ljava/util/ArrayList;

.field public final mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

.field public mClient:Landroid/view/autofill/IAutoFillManagerClient;

.field public mClientState:Landroid/os/Bundle;

.field public mClientStateForSecondary:Landroid/os/Bundle;

.field public mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

.field public final mCompatMode:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mContexts:Ljava/util/ArrayList;

.field public mCurrentViewId:Landroid/view/autofill/AutofillId;

.field public final mDelayedFillBroadcastReceiver:Lcom/android/server/autofill/Session$1;

.field public mDelayedFillBroadcastReceiverRegistered:Z

.field public mDelayedFillPendingIntent:Landroid/app/PendingIntent;

.field public mDestroyed:Z

.field public mDisplayId:I

.field public mFieldClassificationIdSnapshot:I

.field public final mFillDialogMinWaitAfterImeAnimationMs:J

.field public mFillDialogRunnable:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;

.field public final mFillDialogTimeoutMs:J

.field public final mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

.field public mFillRequestIdSnapshot:I

.field public final mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

.field public final mFlags:I

.field public final mHandler:Landroid/os/Handler;

.field public mHasCallback:Z

.field public final mIgnoreViewStateResetToEmpty:Z

.field public mImeAnimationFinishTimeMs:J

.field public final mImproveFillDialogEnabled:Z

.field public final mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

.field public final mIsPrimaryCredential:Z

.field public mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

.field public mLastInlineSuggestionsRequest:Landroid/util/Pair;

.field public mLastInputStartTime:J

.field public mLatencyBaseTime:J

.field public final mLock:Ljava/lang/Object;

.field public mLogViewEntered:Z

.field public mLoggedInlineDatasetShown:Z

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mPccAssistReceiver:Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;

.field public mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

.field public final mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

.field public mPreviousNonNullEnteredViewId:Landroid/view/autofill/AutofillId;

.field public mPreviouslyFillDialogPotentiallyStarted:Z

.field public final mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

.field public mRequestCount:I

.field public final mRequestLogs:Landroid/util/SparseArray;

.field public mResponses:Landroid/util/SparseArray;

.field public final mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

.field public mSaveOnAllViewsInvisible:Z

.field public final mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

.field public mSecondaryResponses:Landroid/util/SparseArray;

.field public mSelectedDatasetIds:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

.field public final mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

.field public final mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

.field public mSessionState:I

.field public final mStartTime:J

.field public final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final mUiLatencyHistory:Landroid/util/LocalLog;

.field public mUiShownTime:J

.field public mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

.field public final mViewStates:Landroid/util/ArrayMap;

.field public mWaitForImeAnimation:Z

.field public final mWtfHistory:Landroid/util/LocalLog;

.field public final taskId:I

.field public final uid:I

.field public final userId:I


# direct methods
.method public static -$$Nest$maddCredentialManagerDataToClientState(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillRequest;Landroid/view/inputmethod/InlineSuggestionsRequest;I)Landroid/service/autofill/FillRequest;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/service/autofill/FillRequest;

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getFillContexts()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getHints()Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v6

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getDelayedFillIntentSender()Landroid/content/IntentSender;

    move-result-object v8

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/content/IntentSender;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo v0, "autofill_session_id"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo p3, "autofill_request_id"

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    new-instance p3, Lcom/android/server/autofill/Session$4;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, p0, v0, p2}, Lcom/android/server/autofill/Session$4;-><init>(Lcom/android/server/autofill/Session;Landroid/os/Handler;I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p3, p0, p2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/ResultReceiver;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p3, "android.credentials.AUTOFILL_RESULT_RECEIVER"

    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p1
.end method

.method public static -$$Nest$mcreatePendingIntent(Lcom/android/server/autofill/Session;I)Landroid/app/PendingIntent;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "createPendingIntent for request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.autofill.action.DELAYED_FILL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    const/high16 v3, 0x52000000

    invoke-static {v2, p0, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static -$$Nest$mfillContextWithAllowedValuesLocked(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v1, v0, [Landroid/view/autofill/AutofillId;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/ViewState;

    iget-object v4, v4, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_5

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    aget-object v3, p1, v2

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fillContextWithAllowedValuesLocked(): no node for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AutofillSession"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget-object v4, v1, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    iget-object v5, v1, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    new-instance v6, Landroid/app/assist/AssistStructure$AutofillOverlay;

    invoke-direct {v6}, Landroid/app/assist/AssistStructure$AutofillOverlay;-><init>()V

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object v4, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    :cond_2
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v5, :cond_3

    iget-object v1, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v1, :cond_3

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_3

    iput-object v4, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    :cond_3
    invoke-virtual {v3, v6}, Landroid/app/assist/AssistStructure$ViewNode;->setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static -$$Nest$mgetTypeHintsForProvider(Lcom/android/server/autofill/Session;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mPccProviderHints:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TypeHints flag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static -$$Nest$smlogIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "AutofillSession"

    if-nez p0, :cond_0

    const-string p0, " Session null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz p0, :cond_1

    const-string p0, " Session destroyed, but following through"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/autofill/RequestId;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "RequestId(): startId= "

    const-string/jumbo v4, "RequestId"

    invoke-static {v1, v3, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/autofill/RequestId;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    sput-object v0, Lcom/android/server/autofill/Session;->mRequestId:Lcom/android/server/autofill/RequestId;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZILcom/android/server/inputmethod/InputMethodManagerInternal;Z)V
    .locals 17

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v0, p15

    move/from16 v12, p22

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v13, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v13}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v13, v4, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v14, 0x0

    iput v14, v4, Lcom/android/server/autofill/Session;->mSessionState:I

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v4, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    const/4 v1, -0x2

    iput v1, v4, Lcom/android/server/autofill/Session;->mFillRequestIdSnapshot:I

    iput v1, v4, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    new-instance v1, Landroid/util/SparseArray;

    const/4 v15, 0x1

    invoke-direct {v1, v15}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, v4, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    iput v14, v4, Lcom/android/server/autofill/Session;->mDisplayId:I

    new-instance v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    invoke-direct {v1, v4}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v1, v4, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    new-instance v1, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;

    invoke-direct {v1, v4}, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v1, v4, Lcom/android/server/autofill/Session;->mPccAssistReceiver:Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;

    new-instance v1, Lcom/android/server/autofill/Session$ClassificationState;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v15, v1, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    iput-object v1, v4, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    new-instance v1, Lcom/android/server/autofill/Session$1;

    invoke-direct {v1, v4}, Lcom/android/server/autofill/Session$1;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v1, v4, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Lcom/android/server/autofill/Session$1;

    const-wide/16 v1, -0x1

    iput-wide v1, v4, Lcom/android/server/autofill/Session;->mImeAnimationFinishTimeMs:J

    iput-wide v1, v4, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    const/4 v1, 0x0

    if-gez v9, :cond_0

    const-string/jumbo v2, "Non-positive sessionId: %s"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput v9, v4, Lcom/android/server/autofill/Session;->id:I

    move/from16 v2, p20

    iput v2, v4, Lcom/android/server/autofill/Session;->mFlags:I

    move/from16 v3, p5

    iput v3, v4, Lcom/android/server/autofill/Session;->userId:I

    move/from16 v5, p8

    iput v5, v4, Lcom/android/server/autofill/Session;->taskId:I

    iput v10, v4, Lcom/android/server/autofill/Session;->uid:I

    iput-object v7, v4, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iput-object v8, v4, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v4, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    move-object/from16 v5, p4

    iput-object v5, v4, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v1, 0x104032c

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_2

    const-string v1, "AutofillSession"

    const-string v14, "Invalid CredentialAutofillService"

    invoke-static {v1, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v12, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v14, v0

    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v6

    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    move-object v14, v6

    :goto_1
    const-string v1, "AutofillSession"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Primary service component name: "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", secondary service component name: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    const/4 v1, 0x0

    const/16 v16, 0x0

    :goto_2
    move-object v15, v4

    goto :goto_3

    :cond_5
    move-object v2, v0

    new-instance v0, Lcom/android/server/autofill/RemoteFillService;

    move-object/from16 v1, p3

    move/from16 v5, p18

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;ZLandroid/content/ComponentName;)V

    move-object v1, v0

    goto :goto_2

    :goto_3
    iput-object v1, v15, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v14, :cond_6

    move-object/from16 v1, p3

    move-object/from16 v0, v16

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/android/server/autofill/SecondaryProviderHandler;

    new-instance v4, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;

    invoke-direct {v4, v15}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/Session;)V

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p18

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/SecondaryProviderHandler;-><init>(Landroid/content/Context;IZLcom/android/server/autofill/Session$$ExternalSyntheticLambda0;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :goto_4
    iput-object v0, v15, Lcom/android/server/autofill/Session;->mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

    iput-object v11, v15, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    move/from16 v0, p12

    iput-boolean v0, v15, Lcom/android/server/autofill/Session;->mHasCallback:Z

    move-object/from16 v0, p13

    iput-object v0, v15, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    move-object/from16 v0, p14

    iput-object v0, v15, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    const-string/jumbo v2, "getDisplayId: No activity record matching token="

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    :try_start_0
    invoke-static {v11}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    const-string v3, "AutofillHelper"

    if-ne v2, v0, :cond_8

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "getDisplayContext(): context %s already has displayId %d"

    invoke-static {v3, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Creating context for display %d"

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Could not get context with displayId %d, Autofill operations will probably fail)"

    invoke-static {v3, v2, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    :cond_b
    :goto_5
    iput-object v1, v15, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    move-object/from16 v0, p16

    iput-object v0, v15, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    move/from16 v1, p17

    iput-boolean v1, v15, Lcom/android/server/autofill/Session;->mCompatMode:Z

    const/4 v1, 0x1

    iput v1, v15, Lcom/android/server/autofill/Session;->mSessionState:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v15, Lcom/android/server/autofill/Session;->mStartTime:J

    iput-wide v1, v15, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    const/4 v3, 0x0

    iput v3, v15, Lcom/android/server/autofill/Session;->mRequestCount:I

    new-instance v3, Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-direct {v3, v9, v10, v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;-><init>(IIJ)V

    iput-object v3, v15, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    new-instance v1, Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-direct {v1, v9}, Lcom/android/server/autofill/FillRequestEventLogger;-><init>(I)V

    iput-object v1, v15, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    new-instance v1, Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-direct {v1, v9}, Lcom/android/server/autofill/FillResponseEventLogger;-><init>(I)V

    iput-object v1, v15, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    new-instance v1, Lcom/android/server/autofill/SessionCommittedEventLogger;

    invoke-direct {v1, v9}, Lcom/android/server/autofill/SessionCommittedEventLogger;-><init>(I)V

    iput-object v1, v15, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    iget-object v1, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v10, v3}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-wide v1, v15, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    new-instance v3, Lcom/android/server/autofill/SaveEventLogger;

    invoke-direct {v3, v9, v1, v2}, Lcom/android/server/autofill/SaveEventLogger;-><init>(IJ)V

    iput-object v3, v15, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iput-boolean v12, v15, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIgnoreViewStateResetToEmpty()Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/autofill/Session;->mIgnoreViewStateResetToEmpty:Z

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->isImproveFillDialogEnabled()Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/autofill/Session;->mImproveFillDialogEnabled:Z

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getFillDialogTimeoutMs()J

    move-result-wide v1

    iput-wide v1, v15, Lcom/android/server/autofill/Session;->mFillDialogTimeoutMs:J

    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->getFillDialogMinWaitAfterImeAnimationtEndMs()J

    move-result-wide v1

    iput-wide v1, v15, Lcom/android/server/autofill/Session;->mFillDialogMinWaitAfterImeAnimationMs:J

    monitor-enter p6

    :try_start_1
    new-instance v1, Lcom/android/server/autofill/Session$SessionFlags;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v15, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    move/from16 v2, p19

    iput-boolean v2, v1, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    iget-object v2, v7, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/service/autofill/AutofillServiceInfo;->isInlineSuggestionsEnabled()Z

    move-result v3

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    iput-boolean v3, v1, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    move-object/from16 v1, p11

    invoke-virtual {v15, v1}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->supportFoldableNoSubDisplay()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v15, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/server/autofill/Session;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v1

    iput v1, v15, Lcom/android/server/autofill/Session;->mDisplayId:I

    :cond_d
    new-instance v1, Lcom/android/server/autofill/AutofillInlineSessionController;

    new-instance v2, Lcom/android/server/autofill/Session$2;

    invoke-direct {v2, v15}, Lcom/android/server/autofill/Session$2;-><init>(Lcom/android/server/autofill/Session;)V

    move-object/from16 p11, p4

    move/from16 p9, p5

    move-object/from16 p8, p21

    move-object/from16 p10, v0

    move-object/from16 p7, v1

    move-object/from16 p13, v2

    move-object/from16 p12, v8

    invoke-direct/range {p7 .. p13}, Lcom/android/server/autofill/AutofillInlineSessionController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/autofill/Session$2;)V

    move-object/from16 v0, p7

    iput-object v0, v15, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    const/16 v0, 0x38a

    invoke-virtual {v15, v0}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5ac

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/4 v3, 0x0

    iput-boolean v3, v15, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_e
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_7
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public static addFallbackDatasets(Lcom/android/server/autofill/Session$3;Lcom/android/server/autofill/Session$3;)V
    .locals 9

    iget-object v0, p1, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/Dataset;

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/view/autofill/AutofillId;

    invoke-virtual {v7, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    iget-object v8, p1, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static copyFieldsFromDataset(Landroid/service/autofill/Dataset;ILandroid/view/autofill/AutofillId;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/autofill/AutofillValue;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset;->getFieldDialogPresentation(I)Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-virtual {p6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object p2

    invoke-virtual {p7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset;->getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object p2

    invoke-virtual {p8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object p0

    invoke-virtual {p9, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p1, p3}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/Number;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const-string p3, ", "

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x3d

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    :cond_1
    return-void
.end method

.method public static getActivityDisplayId(Landroid/os/IBinder;)I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "AutofillSession"

    const-string v1, "Error in getActivityDisplayId"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static sessionStateAsString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "UNKNOWN_SESSION_STATE_"

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "STATE_REMOVED"

    return-object p0

    :cond_1
    const-string/jumbo p0, "STATE_FINISHED"

    return-object p0

    :cond_2
    const-string/jumbo p0, "STATE_ACTIVE"

    return-object p0

    :cond_3
    const-string/jumbo p0, "STATE_UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public final addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/metrics/LogMaker;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "addTaggedDataToRequestLogLocked(tag="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): no log for id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    return-void
.end method

.method public final authenticate(ILandroid/content/IntentSender;Landroid/os/Bundle;I)V
    .locals 26

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string v2, "Call to Session#authenticate() rejected - session: "

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "authenticate(): requestId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; datasetIdx=65535; intentSender="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    iget-object v3, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v4, v4, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v6, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean v4, v1, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v4, :cond_1

    const-string v0, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destroyed"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    move-object/from16 v2, p3

    invoke-virtual {v1, v0, v2}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    const/4 v2, 0x0

    if-nez v4, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    monitor-exit v3

    return-void

    :cond_2
    iget-object v6, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v8, v1, Lcom/android/server/autofill/Session;->id:I

    iget-object v12, v1, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v10

    iget-object v11, v6, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v13, "setAuthenticationSelected()"

    if-nez v10, :cond_4

    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_3

    const-string v6, "AutofillManagerServiceImpl"

    const-string/jumbo v8, "setAuthenticationSelected() not logged because shouldAdd is false"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v24, v11

    goto :goto_4

    :cond_3
    :goto_1
    monitor-exit v11

    goto :goto_2

    :cond_4
    move-object/from16 v23, v9

    new-instance v9, Landroid/service/autofill/FillEventHistory$Event;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v10, 0x2

    move-object v14, v11

    const/4 v11, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    move-object/from16 v22, v14

    const/4 v14, 0x0

    move-object/from16 v24, v15

    const/4 v15, 0x0

    move-object/from16 v2, v24

    move-object/from16 v24, v22

    move/from16 v22, p4

    :try_start_2
    invoke-direct/range {v9 .. v23}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;IILandroid/view/autofill/AutofillId;)V

    invoke-virtual {v6, v2, v8, v9}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->addEventToHistory(Ljava/lang/String;ILandroid/service/autofill/FillEventHistory$Event;)V

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const v2, 0xffff

    invoke-static {v0, v2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v0

    iget-object v6, v1, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    move v2, v0

    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v3, p4

    if-ne v3, v7, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v25, v5

    move-object v5, v3

    move-object/from16 v3, v25

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_2
    move-exception v0

    :goto_4
    :try_start_4
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0

    :goto_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final autoFill(IILandroid/service/autofill/Dataset;ZI)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v2, p3

    const-string v1, "Call to Session#autoFill() rejected - session: "

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "AutofillSession"

    const-string/jumbo v4, "autoFill(): requestId="

    const-string v5, "; datasetIdx="

    const-string v8, "; dataset="

    invoke-static {v6, v7, v4, v5, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v3, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v3, :cond_1

    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " destroyed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v5, 0x6

    invoke-direct {v4, v7, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda29;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    move-result v3

    iget-object v4, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda9;

    const/4 v9, 0x1

    invoke-direct {v5, v3, v9, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v1

    if-nez v1, :cond_6

    if-eqz p4, :cond_4

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v11

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v5

    iget-object v6, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v7, "logDatasetSelected()"

    if-nez v5, :cond_3

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2

    const-string v1, "AutofillManagerServiceImpl"

    const-string/jumbo v3, "logDatasetSelected() not logged because shouldAdd is false"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v6

    goto :goto_2

    :cond_3
    new-instance v9, Landroid/service/autofill/FillEventHistory$Event;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v22, p5

    move-object/from16 v23, v4

    invoke-direct/range {v9 .. v23}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;IILandroid/view/autofill/AutofillId;)V

    invoke-virtual {v1, v7, v3, v9}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->addEventToHistory(Ljava/lang/String;ILandroid/service/autofill/FillEventHistory$Event;)V

    monitor-exit v6

    goto :goto_2

    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v0

    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v3, v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V

    :cond_5
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->autoFillApp(Landroid/service/autofill/Dataset;)V

    monitor-exit v8

    return-void

    :cond_6
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v11

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v5

    iget-object v9, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string/jumbo v10, "logDatasetAuthenticationSelected()"

    if-nez v5, :cond_8

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_7

    const-string v1, "AutofillManagerServiceImpl"

    const-string/jumbo v3, "logDatasetAuthenticationSelected() not logged because shouldAdd is false"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v5, v9

    goto/16 :goto_6

    :cond_7
    :goto_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :cond_8
    move-object v5, v9

    :try_start_4
    new-instance v9, Landroid/service/autofill/FillEventHistory$Event;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v10

    const/4 v10, 0x1

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v22, v15

    const/4 v15, 0x0

    move-object/from16 v23, v4

    move-object/from16 v4, v22

    move/from16 v22, p5

    invoke-direct/range {v9 .. v23}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;IILandroid/view/autofill/AutofillId;)V

    invoke-virtual {v1, v4, v3, v9}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->addEventToHistory(Ljava/lang/String;ILandroid/service/autofill/FillEventHistory$Event;)V

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_4
    :try_start_5
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    const/16 v3, 0x40

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/Dataset;->getCredentialFillInIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v1, "AutofillSession"

    const-string/jumbo v2, "Setting credential fill intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/Dataset;->getCredentialFillInIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_5

    :cond_9
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v6, v1}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    :goto_5
    const/4 v2, 0x0

    if-nez v1, :cond_a

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    monitor-exit v8

    return-void

    :cond_a
    invoke-static/range {p1 .. p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catchall_3
    move-exception v0

    :goto_6
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v0

    :goto_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public final autoFillApp(Landroid/service/autofill/Dataset;)V
    .locals 13

    const-string v0, "Call to Session#autoFillApp() rejected - session: "

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_0

    const-string p1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v0, :cond_6

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/autofill/ViewState;

    iget-object v10, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v10, v10, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v10, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v11, v10, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v10, v10, Lcom/android/server/autofill/AutofillManagerService;->mIsFillFieldsFromCurrentSessionOnly:Z

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_3

    if-eqz v9, :cond_3

    :try_start_3
    iget-object v10, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v10}, Landroid/view/autofill/AutofillId;->getSessionId()I

    move-result v10

    iget v11, p0, Lcom/android/server/autofill/Session;->id:I

    if-eq v10, v11, :cond_3

    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_2

    const-string v9, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Skipping filling view: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as it isn\'t part of the current session: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_5

    iget v10, v9, Lcom/android/server/autofill/ViewState;->mState:I

    const/16 v11, 0x40

    and-int/2addr v10, v11

    if-eqz v10, :cond_5

    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_4

    const-string v7, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "autofillApp(): view "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " waiting auth"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v9, v11}, Lcom/android/server/autofill/ViewState;->resetState(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x1

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    :cond_6
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v8, 0x2

    invoke-direct {v5, v6, v8}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v0, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz v7, :cond_7

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    const/4 v6, 0x4

    invoke-direct {v5, v0, p0, v6}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_8

    const-string v0, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Total views to be autofilled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_9

    const-string v0, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "autoFillApp(): the buck is on the app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v5, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v0, v5, v2, v3, v4}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    :cond_a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_6
    const-string p1, "AutofillSession"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error autofilling activity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final callSaveLocked()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v1, 0x0

    const-string v2, "AutofillSession"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Call to Session#callSaveLocked() rejected - session: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    const-string v4, " destroyed"

    invoke-static {v3, v4, v2, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget-object v0, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;-><init>(Z)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "callSaveLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget-object v0, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;-><init>(Z)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "callSaveLocked("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): mViewStates="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    const-string/jumbo v0, "callSaveLocked(): no contexts"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget-object v0, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;-><init>(Z)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    iget-object v1, v1, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-nez v2, :cond_4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    :cond_4
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v1, "detections"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    new-instance v1, Landroid/service/autofill/SaveRequest;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2, v3}, Landroid/service/autofill/SaveRequest;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final cancelAugmentedAutofillLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    const-string v1, "AutofillSession"

    if-nez v0, :cond_0

    const-string/jumbo p0, "cancelAugmentedAutofillLocked(): no service for user"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cancelAugmentedAutofillLocked() on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public final cancelCurrentRequestLocked()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "cancelCurrentRequestLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->cancelCurrentRequest()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/FillResponseEventLogger;->startLogForNewResponse()V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget v2, p0, Lcom/android/server/autofill/Session;->uid:I

    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillContext;

    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v2

    if-ne v2, v0, :cond_2

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "cancelCurrentRequest(): id = "

    const-string v3, "AutofillSession"

    invoke-static {v0, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final cancelSave()V
    .locals 4

    const-string v0, "Call to Session#cancelSave() rejected - session: "

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_0

    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const-string/jumbo v0, "createAuthFillInIntentLocked(): no FillContext. requestId=%d; mContexts=%s"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/os/Parcelable;

    const-string/jumbo p1, "android.view.autofill.extra.INLINE_SUGGESTIONS_REQUEST"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo p0, "android.view.autofill.extra.ASSIST_STRUCTURE"

    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo p0, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public final createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/autofill/ViewState;

    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    invoke-direct {v0, p1, p0, p2, v1}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;IZ)V

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding autofillable view with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    and-int/lit8 p0, p2, 0x4

    if-eqz p0, :cond_2

    iput-object p3, v0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    :cond_2
    return-object v0
.end method

.method public final createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$3;)Landroid/service/autofill/FillResponse;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    iget-object v2, v2, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p2}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    invoke-static {v4}, Lcom/android/server/autofill/HintsHelper;->getHintsForSaveType(I)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v7, v4

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    monitor-exit v1

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/autofill/AutofillId;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p2, v2}, Landroid/service/autofill/SaveInfo;->copy(Landroid/service/autofill/SaveInfo;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo;

    move-result-object p2

    monitor-exit v1

    goto :goto_4

    :cond_6
    :goto_2
    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_4
    invoke-static {p1, v0, p2}, Landroid/service/autofill/FillResponse;->shallowCopy(Landroid/service/autofill/FillResponse;Ljava/util/List;Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    return-object p0
.end method

.method public final destroyLocked()Lcom/android/server/autofill/RemoteFillService;
    .locals 19

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v2, "AutofillSession"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "destroyLocked for session: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v1, v3, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "logAllEvents("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): commitReason: 5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    iget-object v1, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    iget v3, v0, Lcom/android/server/autofill/Session;->mRequestCount:I

    iget-object v1, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v3, v5

    iget-object v1, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v4}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/FillRequestEventLogger;->logAndEndEvent()V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string/jumbo v3, "log all events"

    invoke-virtual {v1, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    iget-object v3, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    const-string/jumbo v4, "SessionCommittedEventLogger"

    if-nez v3, :cond_2

    const-string/jumbo v1, "Shouldn\'t be logging AutofillSessionCommitted again for same session."

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget-object v3, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Log AutofillSessionCommitted: sessionId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mComponentPackageUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mRequestCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mCommitReason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mSessionDurationMillis="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " mServiceUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mServiceUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mSaveInfoCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveInfoCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mSaveDataTypeCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveDataTypeCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mLastFillResponseHasSaveInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mLastFillResponseHasSaveInfo:Z

    invoke-static {v4, v5, v6}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_3
    iget v9, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    iget v4, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    int-to-long v10, v4

    iget v12, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    iget-wide v13, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    iget v15, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mServiceUid:I

    iget v4, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveInfoCount:I

    iget v5, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveDataTypeCount:I

    iget-boolean v3, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mLastFillResponseHasSaveInfo:Z

    const/16 v7, 0x25f

    iget v8, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mSessionId:I

    move/from16 v18, v3

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-static/range {v7 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIJIIIZ)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    :goto_0
    iget-boolean v1, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    return-object v3

    :cond_4
    const-string/jumbo v1, "clearPendingIntentLocked"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    iput-object v3, v0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v4, v0, v6}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    iget-object v1, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v0, v5}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    iget-object v1, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_7

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v5, v4, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v5, :cond_6

    new-instance v7, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v7, v1}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v5, v7}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    iget-object v1, v4, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->destroySessionLocked()V

    iput-object v3, v4, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    :cond_6
    iput-object v3, v4, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    :cond_7
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v3, v0, Lcom/android/server/autofill/Session;->userId:I

    iget v4, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->destroySuggestionViews(II)V

    :cond_8
    iput-boolean v6, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-string/jumbo v3, "destroyLocked(): logging "

    const/4 v4, 0x0

    if-lez v1, :cond_a

    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " requests"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v5, v4

    :goto_2
    if-ge v5, v1, :cond_a

    iget-object v7, v0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/metrics/LogMaker;

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v8, v7}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v5, :cond_b

    move v5, v4

    goto :goto_3

    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_3
    if-lez v5, :cond_d

    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " augmented requests"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    if-ge v4, v5, :cond_d

    iget-object v2, v0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/metrics/LogMaker;

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    const/16 v2, 0x397

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x5af

    invoke-virtual {v2, v3, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    if-lez v5, :cond_e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x65f

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_e
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v2, v2, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    if-eqz v2, :cond_f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x6b8

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_f
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final fill(IILandroid/service/autofill/Dataset;I)V
    .locals 8

    const-string v0, "Call to Session#fill() rejected - session: "

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_0

    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/FillContext;

    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v4

    new-instance v5, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p1}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v4, v5}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result p1

    aget-object p0, p0, p1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    monitor-exit v0

    return-object v2

    :cond_4
    const-string p0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "findByAutofillId(): no autofill options for id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    const-string v1, "AutofillSession"

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "findValueLocked(): no view state for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v2, v0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v0, v0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "findValueLocked(): current value for "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is empty, using candidateSaveValue instead."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :cond_4
    if-nez v2, :cond_5

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "findValueLocked(): no current value for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", checking value from previous fill contexts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v2
.end method

.method public final findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "findValueLocked(): looking on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " previous sessions for autofillId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/Session;

    invoke-virtual {v2, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final forceRemoveFromServiceLocked(I)V
    .locals 7

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "forceRemoveFromServiceLocked(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;

    invoke-direct {v6, v4, v5, p0, v2}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    iget-object v2, v4, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0, p1, v3}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Error notifying client to finish session"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iput-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method

.method public final getAutofillServiceUid()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public final getClient()Landroid/view/autofill/IAutoFillManagerClient;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getDetectionPreferenceForLogging()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mPccPreferProviderOverPcc:Z

    monitor-exit v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getEffectiveFillResponse(Landroid/service/autofill/FillResponse;)Landroid/service/autofill/FillResponse;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/server/autofill/Session$3;

    invoke-direct {v2}, Lcom/android/server/autofill/Session$3;-><init>()V

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_6

    :cond_1
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/service/autofill/Dataset;

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_4
    :goto_2
    if-ge v15, v13, :cond_5

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    check-cast v16, Landroid/view/autofill/AutofillId;

    if-nez v16, :cond_4

    add-int/lit8 v11, v11, -0x1

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    if-nez v11, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v14, :cond_9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v32, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v33, v9

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v11, v9, :cond_8

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillId;

    if-eqz v9, :cond_7

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v11}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v11}, Landroid/service/autofill/Dataset;->getFieldDialogPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v11}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v11}, Landroid/service/autofill/Dataset;->getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v11}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v33

    goto :goto_3

    :cond_8
    new-instance v16, Landroid/service/autofill/Dataset;

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    move-result-object v25

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v31

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-direct/range {v16 .. v31}, Landroid/service/autofill/Dataset;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ClipData;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Ljava/lang/String;Landroid/content/IntentSender;)V

    const/4 v3, 0x3

    move-object/from16 v10, v16

    goto :goto_4

    :cond_9
    move/from16 v32, v3

    move-object/from16 v33, v9

    move/from16 v3, v32

    :goto_4
    invoke-virtual {v10, v3}, Landroid/service/autofill/Dataset;->setEligibleReasonReason(I)V

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_b

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v6, v6, 0x1

    check-cast v9, Landroid/view/autofill/AutofillId;

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    if-nez v11, :cond_a

    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_a
    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    move/from16 v3, v32

    move-object/from16 v9, v33

    goto/16 :goto_1

    :cond_c
    iput-object v5, v2, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    iput-object v7, v2, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    iput-object v8, v2, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    :goto_6
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    move-result v3

    if-nez v3, :cond_e

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_d

    const-string v3, "AutofillSession"

    const-string/jumbo v4, "PCC classification is disabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/Session;->createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$3;)Landroid/service/autofill/FillResponse;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    iget v5, v4, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_23

    iget-object v5, v4, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    if-nez v5, :cond_f

    goto/16 :goto_14

    :cond_f
    invoke-virtual {v4}, Lcom/android/server/autofill/Session$ClassificationState;->processResponse()Z

    move-result v4

    if-nez v4, :cond_10

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :cond_10
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v4, v3, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-boolean v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mPccPreferProviderOverPcc:Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v5, v4, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iget-boolean v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mPccUseFallbackDetection:Z

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_12

    if-nez v4, :cond_12

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_11

    const-string v3, "AutofillSession"

    const-string/jumbo v4, "preferAutofillProvider but no fallback"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/Session;->createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$3;)Landroid/service/autofill/FillResponse;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v5, Lcom/android/server/autofill/Session$3;

    invoke-direct {v5}, Lcom/android/server/autofill/Session$3;-><init>()V

    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_13

    move/from16 v33, v3

    move/from16 v34, v4

    goto/16 :goto_11

    :cond_13
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    iget-object v9, v9, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v13, 0x0

    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_1f

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroid/service/autofill/Dataset;

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_14

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_15

    :cond_14
    move/from16 v33, v3

    move/from16 v34, v4

    move-object/from16 v35, v7

    move-object/from16 v37, v9

    move/from16 v36, v13

    goto/16 :goto_10

    :cond_15
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/LinkedHashSet;

    invoke-direct {v14}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    move/from16 v33, v3

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    move/from16 v34, v4

    move-object/from16 v35, v7

    const/4 v4, 0x0

    const/4 v7, 0x4

    const/16 v25, 0x0

    :goto_8
    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v16

    move/from16 v36, v13

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_1c

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_19

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_16

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_16

    const/4 v7, 0x5

    goto :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_13

    :cond_16
    :goto_9
    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/autofill/AutofillId;

    move/from16 v16, v4

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    iget-object v4, v4, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationCombinedHintsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-interface {v3, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v13

    invoke-static/range {v15 .. v24}, Lcom/android/server/autofill/Session;->copyFieldsFromDataset(Landroid/service/autofill/Dataset;ILandroid/view/autofill/AutofillId;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move/from16 v4, v16

    goto :goto_a

    :cond_17
    move/from16 v4, v16

    :cond_18
    :goto_a
    move/from16 v16, v4

    :goto_b
    move-object/from16 v37, v9

    goto :goto_d

    :cond_19
    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    move/from16 v16, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1a

    goto :goto_b

    :cond_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v37, v9

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v13, :cond_1b

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v26, v4

    move-object/from16 v4, v17

    check-cast v4, Landroid/view/autofill/AutofillId;

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v4

    invoke-static/range {v15 .. v24}, Lcom/android/server/autofill/Session;->copyFieldsFromDataset(Landroid/service/autofill/Dataset;ILandroid/view/autofill/AutofillId;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v4, v26

    goto :goto_c

    :cond_1b
    const/16 v25, 0x1

    :goto_d
    add-int/lit8 v4, v16, 0x1

    move/from16 v13, v36

    move-object/from16 v9, v37

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v37, v9

    if-eqz v25, :cond_1e

    invoke-interface {v14, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v12, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v16, Landroid/service/autofill/Dataset;

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    move-result-object v25

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v31

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v16 .. v31}, Landroid/service/autofill/Dataset;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ClipData;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Ljava/lang/String;Landroid/content/IntentSender;)V

    move-object/from16 v3, v16

    invoke-virtual {v3, v7}, Landroid/service/autofill/Dataset;->setEligibleReasonReason(I)V

    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    invoke-interface {v10, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {v10, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    goto :goto_f

    :cond_1d
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_f
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1e
    :goto_10
    add-int/lit8 v13, v36, 0x1

    move/from16 v3, v33

    move/from16 v4, v34

    move-object/from16 v7, v35

    move-object/from16 v9, v37

    const/4 v6, 0x4

    goto/16 :goto_7

    :cond_1f
    move/from16 v33, v3

    move/from16 v34, v4

    iput-object v12, v5, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    iput-object v11, v5, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    iput-object v10, v5, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_11
    if-eqz v33, :cond_20

    if-eqz v34, :cond_22

    invoke-static {v2, v5}, Lcom/android/server/autofill/Session;->addFallbackDatasets(Lcom/android/server/autofill/Session$3;Lcom/android/server/autofill/Session$3;)V

    goto :goto_12

    :cond_20
    if-eqz v34, :cond_21

    invoke-static {v5, v2}, Lcom/android/server/autofill/Session;->addFallbackDatasets(Lcom/android/server/autofill/Session$3;Lcom/android/server/autofill/Session$3;)V

    :cond_21
    move-object v2, v5

    :cond_22
    :goto_12
    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/Session;->createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$3;)Landroid/service/autofill/FillResponse;

    move-result-object v0

    return-object v0

    :goto_13
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_23
    :goto_14
    :try_start_7
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_26

    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PCC classification no last response:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    iget-object v6, v6, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    if-nez v6, :cond_24

    const/4 v6, 0x1

    goto :goto_15

    :cond_24
    const/4 v6, 0x0

    :goto_15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ,ineligible state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    iget v6, v6, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_25

    const/4 v6, 0x1

    goto :goto_16

    :cond_25
    const/4 v6, 0x0

    :goto_16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/Session;->createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$3;)Landroid/service/autofill/FillResponse;

    move-result-object v0

    monitor-exit v3

    return-object v0

    :goto_17
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public final getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;
    .locals 5

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v4

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;
    .locals 10

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const-string v2, "AutofillSession"

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const-string p0, ": no contexts"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v0, :cond_4

    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const-string p0, ": no responses on session"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1

    :cond_4
    const/4 v3, -0x1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_4

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_6

    iget-object v7, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    move v3, v5

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v6

    if-ge v4, v7, :cond_9

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v8, v9

    const/16 v9, 0x1388

    if-le v8, v9, :cond_8

    move v3, v4

    move v5, v6

    goto :goto_3

    :cond_8
    move v4, v7

    goto :goto_2

    :cond_9
    :goto_3
    if-nez v5, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    move v3, v0

    :cond_a
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "getLastRequestIdIndex(): latestRequestIdIndex = "

    const-string/jumbo v4, "RequestId"

    invoke-static {v3, v0, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    const-string v0, ", mViewStates="

    if-gez v3, :cond_d

    if-eqz p1, :cond_c

    const-string v3, ": did not get last response. mResponses="

    invoke-static {p1, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object v1

    :cond_d
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillResponse;

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_e

    if-eqz p1, :cond_e

    const-string v3, ": mResponses="

    invoke-static {p1, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mContexts="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-object v1
.end method

.method public final getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;
    .locals 2

    if-eqz p1, :cond_6

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ViewState;

    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    :goto_0
    if-nez v0, :cond_5

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/InternalSanitizer;

    if-nez p1, :cond_2

    return-object p3

    :cond_2
    invoke-virtual {p1, p3}, Landroid/service/autofill/InternalSanitizer;->sanitize(Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Value for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") sanitized to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AutofillSession"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p0, :cond_4

    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    :cond_4
    return-object p1

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    return-object p3
.end method

.method public final getSaveInfoLocked()Landroid/service/autofill/SaveInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getServiceIcon(Landroid/service/autofill/FillResponse;)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getIconResourceId()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public final getServiceLabel(Landroid/service/autofill/FillResponse;)Ljava/lang/CharSequence;
    .locals 5

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getServiceDisplayNameResourceId()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p0, v3}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    iget-object v1, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillContext;

    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v1

    new-instance v2, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getValueFromContexts("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isEmptyResponse(Landroid/service/autofill/FillResponse;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "aug:id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    const-string v2, " m="

    const-string v3, " a="

    invoke-static {v1, p1, v2, v3, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " f="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " s="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " w="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " i="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v13, p3

    move/from16 v15, p4

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v4, "AutofillSession"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "logContextCommittedLocked ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/autofill/Session;->id:I

    const-string v6, "): commit_reason:"

    const-string v7, " no_save_reason:"

    invoke-static {v5, v15, v6, v7, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v3, v13, v4}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    const-string/jumbo v3, "logContextCommited(%s)"

    invoke-virtual {v0, v3}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-eq v15, v7, :cond_4

    const/4 v9, 0x2

    if-eq v15, v9, :cond_3

    if-eq v15, v8, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x3

    goto :goto_0

    :cond_3
    const/4 v8, 0x6

    :cond_4
    :goto_0
    invoke-virtual {v5, v8}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    iget-object v5, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string v8, "Context committed"

    invoke-virtual {v5, v8}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v3

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_6

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "logContextCommittedLocked(): ignored by flags "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    const-string/jumbo v11, "logContextCommitted() no datasets at "

    const-string/jumbo v12, "adding ignored dataset "

    const-string/jumbo v14, "logContextCommitted() skipping idless dataset "

    if-ge v8, v3, :cond_10

    iget-object v5, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/FillResponse;

    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_7

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v11, v6, :cond_f

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/Dataset;

    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v10, 0x1

    goto :goto_6

    :cond_a
    :goto_5
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_b

    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-nez v9, :cond_c

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    :cond_c
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_e
    :goto_7
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_10
    move-object v6, v9

    move/from16 v19, v10

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_8
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v5, v10, :cond_27

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/autofill/ViewState;

    move/from16 v20, v5

    iget v5, v10, Lcom/android/server/autofill/ViewState;->mState:I

    and-int/lit8 v21, v5, 0x8

    if-eqz v21, :cond_15

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_16

    iget-object v5, v10, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    if-nez v5, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "logContextCommitted(): no dataset id on "

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_11
    iget-object v15, v10, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    iget-object v13, v10, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-eqz v15, :cond_12

    invoke-virtual {v15, v13}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "logContextCommitted(): ignoring changed "

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " because it has same value that was autofilled"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_12
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_13

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "logContextCommitted() found changed state: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    if-nez v8, :cond_14

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_14
    iget-object v10, v10, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_9
    move/from16 v21, v3

    move-object/from16 v25, v14

    goto/16 :goto_17

    :cond_16
    iget-object v5, v10, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-nez v5, :cond_17

    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "logContextCommitted(): skipping view without current value ( "

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_17
    if-eqz v19, :cond_15

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v3, :cond_15

    iget-object v15, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/autofill/FillResponse;

    invoke-virtual {v15}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_18

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_19

    :cond_18
    move/from16 v21, v3

    move-object/from16 v26, v5

    move-object/from16 v25, v14

    goto/16 :goto_15

    :cond_19
    move/from16 v21, v3

    move-object/from16 v22, v6

    const/4 v3, 0x0

    :goto_b
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_25

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/Dataset;

    move/from16 v23, v3

    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1b

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move-object/from16 v26, v5

    move-object/from16 v25, v14

    move-object/from16 v27, v15

    goto/16 :goto_14

    :cond_1b
    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v24, v7

    move-object/from16 v25, v14

    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_20

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v5, v14}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    sget-boolean v14, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v14, :cond_1c

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v26, v5

    const-string/jumbo v5, "field "

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v10, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was manually filled with value set by dataset "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_1c
    move-object/from16 v26, v5

    :goto_d
    if-nez v24, :cond_1d

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    goto :goto_e

    :cond_1d
    move-object/from16 v5, v24

    :goto_e
    iget-object v14, v10, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArraySet;

    if-nez v14, :cond_1e

    new-instance v14, Landroid/util/ArraySet;

    move-object/from16 v27, v15

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/util/ArraySet;-><init>(I)V

    iget-object v15, v10, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v15, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_1e
    move-object/from16 v27, v15

    :goto_f
    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v5

    goto :goto_10

    :cond_1f
    move-object/from16 v26, v5

    move-object/from16 v27, v15

    :goto_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v26

    move-object/from16 v15, v27

    goto :goto_c

    :cond_20
    move-object/from16 v26, v5

    move-object/from16 v27, v15

    iget-object v5, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v5, :cond_22

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    goto :goto_12

    :cond_21
    :goto_11
    move-object/from16 v7, v24

    goto :goto_14

    :cond_22
    :goto_12
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_23

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    if-nez v22, :cond_24

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    goto :goto_13

    :cond_24
    move-object/from16 v6, v22

    :goto_13
    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v6

    goto :goto_11

    :goto_14
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v14, v25

    move-object/from16 v5, v26

    move-object/from16 v15, v27

    goto/16 :goto_b

    :cond_25
    move-object/from16 v26, v5

    move-object/from16 v25, v14

    move-object/from16 v6, v22

    goto :goto_16

    :goto_15
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_16
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v21

    move-object/from16 v14, v25

    move-object/from16 v5, v26

    goto/16 :goto_a

    :goto_17
    add-int/lit8 v5, v20, 0x1

    move/from16 v13, p3

    move/from16 v15, p4

    move/from16 v3, v21

    move-object/from16 v14, v25

    goto/16 :goto_8

    :cond_27
    if-eqz v7, :cond_29

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_18
    if-ge v10, v3, :cond_28

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/autofill/AutofillId;

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_28
    move-object v10, v5

    goto :goto_19

    :cond_29
    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_19
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v5, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    move-object v7, v5

    iget-object v5, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-boolean v12, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v13

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v14, "AutofillManagerServiceImpl"

    if-nez v13, :cond_2b

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2a

    const-string/jumbo v1, "logContextCommittedLocked() not logged because shouldAdd is false"

    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move/from16 v13, p3

    goto/16 :goto_1e

    :cond_2b
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v13, :cond_2c

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v18, v7

    const-string/jumbo v7, "logContextCommitted() with FieldClassification: id="

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", selectedDatasets="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", ignoredDatasetIds="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", changedAutofillIds="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", changedDatasetIds="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", manuallyFilledFieldIds="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", detectedFieldIds="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", detectedFieldClassifications="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", appComponentName="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", compatMode="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", saveDialogNotShowReason="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-static {v13, v7, v14}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_1a

    :cond_2c
    move-object/from16 v18, v7

    move/from16 v7, p3

    :goto_1a
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v14, v13, [Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/service/autofill/FieldClassification;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v16, v1

    move/from16 p1, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    if-ge v1, v13, :cond_2e

    aget-object v19, v16, v1

    move/from16 v20, v1

    invoke-virtual/range {v19 .. v19}, Landroid/service/autofill/FieldClassification;->getMatches()Ljava/util/List;

    move-result-object v1

    move-object/from16 v19, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    move/from16 v21, p1

    move/from16 p2, v2

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v4, :cond_2d

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/service/autofill/FieldClassification$Match;

    invoke-virtual/range {v22 .. v22}, Landroid/service/autofill/FieldClassification$Match;->getScore()F

    move-result v22

    add-float v21, v22, v21

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2d
    add-int/lit8 v1, v20, 0x1

    move/from16 v2, p2

    move-object/from16 v4, v19

    move/from16 p1, v21

    goto :goto_1b

    :cond_2e
    move-object/from16 v19, v4

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p1

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v15, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v4, 0x4f9

    move/from16 v17, v1

    invoke-virtual {v15}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v11, v1, v3, v12}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v11, 0x4fa

    invoke-virtual {v1, v11, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    move-object v11, v14

    move-object/from16 v12, v16

    goto :goto_1d

    :cond_2f
    move-object/from16 v19, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1d
    new-instance v1, Landroid/service/autofill/FillEventHistory$Event;

    const/4 v2, 0x4

    move v4, v3

    const/4 v3, 0x0

    const/4 v14, 0x0

    move v0, v4

    move v13, v7

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v4, v18

    move-object/from16 v9, v19

    invoke-direct/range {v1 .. v14}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;ILandroid/view/autofill/AutofillId;)V

    const-string/jumbo v2, "logContextCommittedLocked()"

    invoke-virtual {v15, v2, v0, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->addEventToHistory(Ljava/lang/String;ILandroid/service/autofill/FillEventHistory$Event;)V

    move-object/from16 v0, p0

    :goto_1e
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    iget-object v1, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    move/from16 v15, p4

    invoke-direct {v2, v15, v3}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    iget v2, v0, Lcom/android/server/autofill/Session;->mRequestCount:I

    iget-object v1, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0, v13}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    return-void
.end method

.method public final logPresentationStatsOnViewEnteredLocked(Landroid/service/autofill/FillResponse;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda2;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget v0, p0, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    move-result v0

    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda5;-><init>(Landroid/view/autofill/AutofillId;I)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v2, 0x7

    invoke-direct {v1, v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final mergePreviousSessionLocked(Z)Ljava/util/ArrayList;
    .locals 9

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string/jumbo v2, "mergeSessions("

    const-string v3, "AutofillSession"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): Merging the content of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessions for task "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-static {v1, v4, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/Session;

    iget-object v6, v5, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): Not merging null contexts from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v6, v5, v3}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v5}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    :cond_2
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " context from previous session #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v7, v8, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-nez v6, :cond_5

    iget-object v6, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): setting client state from previous session"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v6, v7, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_4
    iget-object v5, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iput-object v5, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final newLogMaker(I)Landroid/metrics/LogMaker;
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-static {p1, v1, v0, v2, p0}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public final notifyClientFillDialogTriggerIds(Ljava/util/List;)V
    .locals 3

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "notifyFillDialogTriggerIds(): "

    :try_start_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillDialogTriggerIds(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string p1, "Cannot set trigger ids for fill dialog"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final notifyDisableAutofillToClient(Landroid/content/ComponentName;J)V
    .locals 3

    const-string v0, "Error notifying client disable autofill: id="

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v2, p2, p3, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyDisableAutofill(JLandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "AutofillSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final notifyUnavailableToClient(ILjava/util/ArrayList;)V
    .locals 4

    const-string v0, "Error notifying client no fill UI: id="

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    if-eqz v3, :cond_1

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {p2, v3, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v2, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    const-string p2, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;I)V
    .locals 16

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    const-string v0, "Call to Session#onFillReady() rejected - session: "

    iget-object v1, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, v2, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget v6, v2, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    iget-object v3, v3, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v7, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean v3, v2, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v3, :cond_0

    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v2, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " destroyed"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    iget-object v0, v2, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    iget-object v0, v2, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    iget-object v0, v2, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string/jumbo v2, "on fill ready"

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, v0

    :goto_0
    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->supportFoldableNoSubDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v2, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/server/autofill/Session;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v1

    iput v1, v2, Lcom/android/server/autofill/Session;->mDisplayId:I

    :cond_2
    iget-object v1, v2, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v3, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v1, v2, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v1, v2, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v8, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_3

    move-object v8, v0

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v8, v1

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    const/4 v11, 0x0

    if-eqz v7, :cond_13

    if-nez v8, :cond_4

    goto/16 :goto_c

    :cond_4
    iget-object v1, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, v2, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v12, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr v9, v12

    long-to-int v3, v9

    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v9, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/16 v10, 0xd

    invoke-direct {v9, v3, v10}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v0, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move/from16 v0, p4

    invoke-virtual {v2, v4, v5, v6, v0}, Lcom/android/server/autofill/Session;->requestShowFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v9, -0x1

    if-ne v0, v1, :cond_5

    iget-object v1, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, v2, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v3, v2, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    const/high16 v3, 0x20000

    invoke-virtual {v0, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    iget-object v0, v2, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v11}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    iget-object v3, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iput-boolean v11, v2, Lcom/android/server/autofill/Session;->mWaitForImeAnimation:Z

    iput-wide v9, v2, Lcom/android/server/autofill/Session;->mImeAnimationFinishTimeMs:J

    iput-wide v9, v2, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_5
    if-nez v0, :cond_6

    iget-object v1, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iput-boolean v11, v2, Lcom/android/server/autofill/Session;->mWaitForImeAnimation:Z

    iput-wide v9, v2, Lcom/android/server/autofill/Session;->mImeAnimationFinishTimeMs:J

    iput-wide v9, v2, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_6
    return-void

    :cond_7
    :goto_2
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->supportsInlineSuggestions()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v1, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    invoke-virtual {v2, v4, v6}, Lcom/android/server/autofill/Session;->requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v3, v2, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    const/16 v3, 0x2000

    invoke-virtual {v0, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    iget-object v0, v2, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v3, v2, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget v2, v2, Lcom/android/server/autofill/Session;->userId:I

    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda9;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    monitor-exit v1

    return-void

    :catchall_4
    move-exception v0

    goto :goto_3

    :cond_8
    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :cond_9
    :goto_4
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v0, v2, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v9, v2, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget v10, v2, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v12, v2, Lcom/android/server/autofill/Session;->mCompatMode:Z

    iget-object v13, v2, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v13, v13, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v13, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v14, v13, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_9
    iget v13, v13, Lcom/android/server/autofill/AutofillManagerService;->mMaxInputLengthForAutofill:I

    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    iget v14, v2, Lcom/android/server/autofill/Session;->mDisplayId:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v15, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v11, "AutofillUI"

    if-eqz v15, :cond_b

    if-nez v6, :cond_a

    const/4 v15, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    :goto_5
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9}, Landroid/content/Context;->getDisplayId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v5, v15, v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v15, "showFillUi(): id=%s, filter=%d chars, displayId=%d"

    invoke-static {v11, v15, v9}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    const/16 v9, 0x38e

    invoke-static {v9, v3, v0, v10, v12}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    if-nez v6, :cond_c

    const/4 v3, 0x0

    goto :goto_6

    :cond_c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v9, 0x38f

    invoke-virtual {v0, v9, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_d

    const/4 v3, 0x0

    goto :goto_7

    :cond_d
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v9, 0x38d

    invoke-virtual {v0, v9, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v10

    new-instance v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    move v9, v13

    move v3, v14

    invoke-direct/range {v0 .. v10}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/Session;ILandroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILandroid/metrics/LogMaker;)V

    iget-object v3, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_8

    :cond_e
    iget-object v3, v3, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    :goto_8
    if-eqz v3, :cond_10

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_f

    const-string/jumbo v3, "postpone fill UI request.."

    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iput-object v0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    goto :goto_9

    :cond_10
    iget-object v1, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_9
    iget-object v1, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-wide v3, v2, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/autofill/Session;->mUiShownTime:J

    iget-wide v5, v2, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v3, v5

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "1st UI for "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " shown in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v5, "AutofillSession"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_b

    :cond_11
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "id="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " app="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " svc="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " latency="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget-object v5, v2, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x479

    invoke-virtual {v2, v0, v4, v3}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    :cond_12
    monitor-exit v1

    return-void

    :goto_b
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    :try_start_b
    monitor-exit v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    :catchall_7
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v0

    :cond_13
    :goto_c
    const-string/jumbo v1, "onFillReady(): no service label or icon"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_8
    move-exception v0

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v0

    :goto_d
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v0
.end method

.method public final onFillRequestFailure(ILjava/lang/Throwable;)V
    .locals 13

    const-string/jumbo v0, "onFillRequestFailureOrTimeout(): not showing \'"

    const-string/jumbo v1, "onFillRequestFailureOrTimeout(): no log for id "

    const-string/jumbo v2, "finishing session due to service "

    const-string v3, "Call to Session#onFillRequestFailureOrTimeout(req="

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    instance-of v5, p2, Ljava/util/concurrent/TimeoutException;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v7, v6, 0x1

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v9}, Lcom/android/server/autofill/FillResponseEventLogger;->startLogForNewResponse()V

    iget-object v9, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v9, v9, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v10, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v11, 0x3

    invoke-direct {v10, p1, v11}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v9, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget v10, p0, Lcom/android/server/autofill/Session;->uid:I

    iget-object v9, v9, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v11, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v12, 0x1

    invoke-direct {v11, v10, v12}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v9, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v9, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v9, v9, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v10, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v9, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v9, v9, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v10, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v12, 0x6

    invoke-direct {v10, v11, v12}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v9, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getDetectionPreferenceForLogging()I

    move-result v10

    iget-object v9, v9, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v11, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v12, 0x5

    invoke-direct {v11, v10, v12}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v9, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    sub-long/2addr v9, v11

    iget-object v11, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    long-to-int v9, v9

    iget-object v10, v11, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v11, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v12, 0x4

    invoke-direct {v11, v9, v12}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    iget-boolean v9, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v10, 0x5

    if-eqz v9, :cond_0

    const-string p2, "AutofillSession"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") rejected - session: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " destroyed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p1, v10}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    monitor-exit v8

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_2

    const-string v3, "AutofillSession"

    if-eqz v5, :cond_1

    const-string/jumbo v9, "timeout"

    goto :goto_0

    :cond_1
    const-string/jumbo v9, "failure"

    :goto_0
    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v3, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    :try_start_1
    iput-object v9, v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v9, p0, Lcom/android/server/autofill/Session;->mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/metrics/LogMaker;

    if-nez v2, :cond_3

    const-string v3, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    const/16 p1, 0xb

    :goto_1
    invoke-virtual {v2, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    :goto_2
    if-nez v6, :cond_7

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object p1, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move p1, v1

    goto :goto_3

    :cond_5
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :goto_3
    const/16 v3, 0x1d

    if-lt p1, v3, :cond_6

    const-string v3, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' because service\'s targeting API "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x624

    invoke-virtual {v2, v0, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_7
    instance-of p1, p2, Ljava/util/concurrent/TimeoutException;

    const/4 v0, 0x6

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1, v10}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    goto :goto_4

    :cond_8
    instance-of p1, p2, Landroid/os/TransactionTooLargeException;

    const/4 p2, 0x7

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p1, v0}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    :goto_4
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string/jumbo p2, "fill request failure"

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object p2, p1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v1, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {p1}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v0, v9}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p1

    invoke-virtual {p1, v4, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/Session;)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_5
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onFillRequestSuccess(ILandroid/service/autofill/FillResponse;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string/jumbo v4, "Service disabled autofill for "

    const-string v5, "Ignoring "

    const-string/jumbo v6, "onFillRequestSuccess(): no request log for id "

    const-string v7, "Call to Session#onFillRequestSuccess() rejected - session: "

    const-string v8, "Call to Session#onFillRequestSuccess() rejected - session: "

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v10, v10, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v11, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v12, 0x7

    invoke-direct {v11, v1, v12}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v10}, Lcom/android/server/autofill/FillResponseEventLogger;->startLogForNewResponse()V

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v10, v10, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v11, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v12, 0x3

    invoke-direct {v11, v1, v12}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget v11, v0, Lcom/android/server/autofill/Session;->uid:I

    iget-object v10, v10, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v12, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v13, 0x1

    invoke-direct {v12, v11, v13}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v10, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTimestamp:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    sub-long/2addr v10, v12

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    long-to-int v10, v10

    iget-object v11, v12, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v12, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/16 v13, 0xb

    invoke-direct {v12, v10, v13}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v11, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v11, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v11, v11, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v12, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v13, 0x4

    invoke-direct {v12, v10, v13}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v11, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->getDetectionPreferenceForLogging()I

    move-result v11

    iget-object v10, v10, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v12, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v13, 0x5

    invoke-direct {v12, v11, v13}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v10, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean v10, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v11, 0x5

    if-eqz v10, :cond_0

    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1, v11}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v8, v8, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    if-eqz v8, :cond_1

    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is showing saveUi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v1, v11}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    monitor-exit v9

    return-void

    :cond_1
    iget-object v7, v0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/metrics/LogMaker;

    if-eqz v7, :cond_2

    const/16 v6, 0xa

    invoke-virtual {v7, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    goto :goto_0

    :cond_2
    const-string v8, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v6, 0x38d

    const/4 v8, 0x0

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v2, v2, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v5, 0x6

    invoke-direct {v4, v8, v5}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v7, :cond_3

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v6, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_3
    invoke-virtual {v0, v1, v3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    monitor-exit v9

    return-void

    :cond_4
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v11, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v11

    if-nez v11, :cond_5

    const-string v4, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because field detection is disabled"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    monitor-exit v9

    return-void

    :cond_5
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/Session;->mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v1

    const/4 v5, 0x4

    and-int/2addr v1, v5

    const/4 v11, 0x1

    if-eqz v1, :cond_6

    const-string v1, "AutofillSession"

    const-string/jumbo v12, "Service requested to wait for delayed fill response."

    invoke-static {v1, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    if-nez v1, :cond_6

    const-string v1, "AutofillSession"

    const-string/jumbo v12, "registerDelayedFillBroadcastLocked()"

    invoke-static {v1, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v12, "android.service.autofill.action.DELAYED_FILL"

    invoke-direct {v1, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget-object v13, v0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Lcom/android/server/autofill/Session$1;

    invoke-virtual {v12, v13, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v11, v0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    :cond_6
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v12, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Landroid/service/autofill/FillEventHistory;

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Landroid/service/autofill/FillEventHistory;-><init>(ILandroid/os/Bundle;)V

    iput-object v13, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    iget-boolean v1, v0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    if-eqz v1, :cond_7

    iput-boolean v8, v0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v12, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v13, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v14

    invoke-virtual {v1, v12, v13, v14}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logViewEntered(ILandroid/view/autofill/AutofillId;Z)V

    :cond_7
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDisableDuration()J

    move-result-wide v14

    const-wide/16 v12, 0x0

    cmp-long v1, v14, v12

    if-lez v1, :cond_8

    move v1, v11

    goto :goto_1

    :cond_8
    move v1, v8

    :goto_1
    const/4 v9, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v12

    and-int/lit8 v13, v12, 0x2

    if-eqz v13, :cond_9

    move v13, v11

    goto :goto_2

    :cond_9
    move v13, v8

    :goto_2
    if-eqz v13, :cond_a

    iget-object v5, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    goto :goto_3

    :cond_a
    move-object v5, v9

    :goto_3
    invoke-virtual {v0, v5, v14, v15}, Lcom/android/server/autofill/Session;->notifyDisableAutofillToClient(Landroid/content/ComponentName;J)V

    if-eqz v13, :cond_b

    move v5, v12

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v13, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v8, v0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v6, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move/from16 v17, v6

    move/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V

    goto :goto_4

    :cond_b
    move v5, v12

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-wide v15, v14

    iget v14, v0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v6, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForApp(Ljava/lang/String;IJZ)V

    move-wide v14, v15

    :goto_4
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iput-boolean v11, v1, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_c

    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but session is kept for augmented autofill only"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_c
    :goto_5
    monitor-exit v6

    return-void

    :cond_d
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Service disabled autofill for "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": flags="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v5, "AutofillSession"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :goto_6
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_e
    :goto_7
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v5

    if-eqz v5, :cond_11

    :cond_10
    if-eqz v1, :cond_13

    :cond_11
    if-eqz v1, :cond_12

    const/4 v5, 0x4

    goto :goto_8

    :cond_12
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v0, v5, v9}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    new-instance v8, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v8, v6}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    iput-object v8, v5, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {v5}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_13
    if-eqz v7, :cond_15

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_9

    :cond_14
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0x38d

    invoke-virtual {v7, v5, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz v10, :cond_15

    array-length v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0x4f7

    invoke-virtual {v7, v5, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_15
    if-nez v4, :cond_16

    const/4 v8, 0x0

    goto :goto_a

    :cond_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    :goto_a
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v6, 0x6

    invoke-direct {v5, v8, v6}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v5, v8, v6}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/autofill/Session;->processResponseLockedForPcc(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v2, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    monitor-exit v4

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :goto_b
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public final onSaveRequestFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 11

    const-string/jumbo v0, "onSaveRequestFailure(): not showing \'"

    const-string v1, "Call to Session#onSaveRequestFailure() rejected - session: "

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v5, Lcom/android/server/autofill/SaveEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr v7, v9

    iget-object v5, v5, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v9, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v8, v10}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;-><init>(JI)V

    invoke-virtual {v5, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v5}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    iget-boolean v5, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v5, :cond_0

    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :goto_0
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' because service\'s targeting API "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    const/16 v4, 0x396

    invoke-static {v4, v0, p1, v1, v2}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    if-eqz p2, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x624

    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/Session;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 9

    const-string v0, "Call to Session#onSaveRequestSuccess() rejected - session: "

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget-object v2, v2, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;-><init>(Z)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v2, Lcom/android/server/autofill/SaveEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr v5, v7

    iget-object v2, v2, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v2}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_0

    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    const/16 v3, 0x396

    invoke-static {v3, v0, p1, v1, v2}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p1

    if-nez p2, :cond_1

    const/16 v4, 0xa

    :cond_1
    invoke-virtual {p1, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    if-eqz p2, :cond_3

    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_2

    const-string p1, "AutofillSession"

    const-string/jumbo v0, "Starting intent sender on save()"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    const-string p1, "AutofillSession"

    const-string/jumbo v0, "removing session because service died"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onShown(II)V
    .locals 11

    const-string/jumbo v6, "onShown(): "

    const-string/jumbo v7, "onShown(): "

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/16 v4, 0x8

    invoke-direct {v2, p1, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda29;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mLoggedInlineDatasetShown:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v6

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(ILandroid/os/Bundle;ILandroid/view/autofill/AutofillId;Z)V

    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iput-boolean v9, p0, Lcom/android/server/autofill/Session;->mLoggedInlineDatasetShown:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda9;

    const/4 v5, 0x2

    invoke-direct {v4, p2, v5, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v9, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr v4, v9

    long-to-int v2, v4

    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/16 v5, 0xa

    invoke-direct {v4, v2, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-object v2, v1

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    move-object v4, v2

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    move-object v5, v4

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v0

    move-object v3, v5

    move v5, v0

    move-object v0, v3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(ILandroid/os/Bundle;ILandroid/view/autofill/AutofillId;Z)V

    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v8

    return-void

    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onSwitchInputMethodLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/android/server/autofill/ViewState;->mState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    :cond_3
    :goto_1
    return-void
.end method

.method public final processNullResponseLocked(II)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    const v2, 0x1040215

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/Session;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v0

    const-string v1, "AutofillSession"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "processNullResponseLocked(): no context for req "

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move-object p1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v0, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v3, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v3, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-object v2, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_3

    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "canceling session "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when service returned null and it cannot be augmented. AutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    :cond_3
    and-int/lit8 p2, p2, 0x4

    const-string/jumbo v0, "keeping session "

    if-eqz p2, :cond_5

    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when service returned null and augmented service is disabled for password fields. AutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V

    goto :goto_1

    :cond_5
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when service returned null but it can be augmented. AutofillableIds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    :try_start_1
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/16 p1, 0x20

    invoke-interface {p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error setting client to autofill-only"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const-string v1, "AutofillSession"

    if-nez v0, :cond_0

    const-string/jumbo v0, "Service did not request to wait for delayed fill response."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    :cond_0
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processResponseLocked(): mCurrentViewId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reqId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",newClientState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v2, 0x2

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p2, :cond_3

    move-object v1, p2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    rem-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientStateForSecondary:Landroid/os/Bundle;

    goto :goto_1

    :cond_4
    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    :goto_1
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const-string/jumbo v1, "webview_requested_credential"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    move p2, v3

    goto :goto_2

    :cond_5
    move p2, v0

    :goto_2
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v4, v4, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda2;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda2;-><init>(IZ)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    sget-object v4, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {p2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda13;

    invoke-direct {v5, v1, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object p2, p2, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->notifyClientFillDialogTriggerIds(Ljava/util/List;)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ViewState;

    invoke-virtual {p0, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    return-void
.end method

.method public final processResponseLockedForPcc(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getEffectiveFillResponse(Landroid/service/autofill/FillResponse;)Landroid/service/autofill/FillResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->isEmptyResponse(Landroid/service/autofill/FillResponse;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeFromService()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeFromServiceLocked()V
    .locals 4

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeFromServiceLocked("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Call to Session#removeFromServiceLocked() rejected - session: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    const-string v2, " destroyed"

    invoke-static {p0, v2, v1, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string/jumbo p0, "removeFromServiceLocked() ignored, waiting for pending save ui"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    new-instance v3, Lcom/android/server/autofill/AutofillManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    return-void
.end method

.method public final requestAssistStructureForPccLocked(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    iget v0, v0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    :cond_0
    sget-object v0, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/server/autofill/Session;->mFillRequestIdSnapshot:I

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    :cond_1
    sget-object v0, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v2, "AutofillSession"

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "request id is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", requesting assist structure for pcc"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mPccAssistReceiver:Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-interface {v0, v5, v1, v6, p1}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "failed to request autofill data for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public final requestFallbackFromFillDialog()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string/jumbo v2, "fallback from fill dialog"

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->startNewEventForPresentationStatsEventLogger()V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    iget-object v2, v1, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/autofill/Session;->logPresentationStatsOnViewEnteredLocked(Landroid/service/autofill/FillResponse;Z)V

    iget p0, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)Ljava/util/Optional;
    .locals 8

    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->shouldRequestSecondaryProvider(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    :goto_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {v2}, Lcom/android/server/autofill/FillRequestEventLogger;->startLogForNewRequest()V

    iget v2, p0, Lcom/android/server/autofill/Session;->mRequestCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/autofill/Session;->mRequestCount:I

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget v4, p0, Lcom/android/server/autofill/Session;->uid:I

    iget-object v2, v2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget v4, p0, Lcom/android/server/autofill/Session;->mFlags:I

    iget-object v2, v2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    invoke-direct {v5, v4, v6}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    goto :goto_1

    :cond_1
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    iput v3, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    iget-boolean v1, v1, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v1, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    sget-object p2, Lcom/android/server/autofill/Session;->mRequestId:Lcom/android/server/autofill/RequestId;

    :cond_5
    iget-object v1, p2, Lcom/android/server/autofill/RequestId;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const v4, 0x8000

    rem-int/2addr v1, v4

    const/4 v4, 0x2

    if-ge v1, v4, :cond_6

    move v1, v4

    :cond_6
    iget-object v4, p2, Lcom/android/server/autofill/RequestId;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    rem-int/lit8 v4, v1, 0x2

    if-ne v4, v3, :cond_7

    move v4, v3

    goto :goto_2

    :cond_7
    move v4, v2

    :goto_2
    if-ne v4, v0, :cond_5

    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_8

    const-string/jumbo p2, "nextId(): requestId = "

    const-string/jumbo v0, "RequestId"

    invoke-static {v1, p2, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/2addr p2, v3

    const/16 v0, 0x38b

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5ae

    invoke-virtual {v0, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    if-eqz p3, :cond_9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x5ac

    invoke-virtual {v0, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_9
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_a

    const-string v0, "AutofillSession"

    const-string/jumbo v4, "Requesting structure for request #"

    const-string v5, " ,requestId="

    const-string v6, ", flags="

    invoke-static {p2, v1, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p2, p3, v0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_a
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget-object p2, p2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    move-result v0

    iget-object p2, p2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    move-result v0

    iget-object p2, p2, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    const/4 v5, 0x5

    invoke-direct {v4, v0, v5}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    move-result v0

    iget-object p2, p2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    const/4 v5, 0x5

    invoke-direct {v4, v0, v5}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean p2, p2, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/autofill/Session;->userId:I

    iget-object p2, p2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0, v4}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    xor-int/2addr v0, v3

    iget-object p2, p2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-virtual {p2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    iget-object p2, p2, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    if-nez p2, :cond_d

    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p2, :cond_c

    const-string p2, "AutofillSession"

    const-string/jumbo v0, "triggering field classification"

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    or-int/lit16 p2, p3, 0x200

    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->requestAssistStructureForPccLocked(I)V

    :cond_d
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    if-eqz p2, :cond_f

    and-int/lit8 v0, p3, 0x10

    if-nez v0, :cond_e

    goto :goto_3

    :cond_e
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_f

    :goto_3
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    iput-object v4, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    iput-boolean v3, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    iput-object v4, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;

    invoke-direct {v5, v3, v0}, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;

    invoke-direct {v6, v3, v1, v5, v0}, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;-><init>(Ljava/lang/ref/WeakReference;ILcom/android/server/autofill/InlineSuggestionRequestConsumer;Landroid/view/autofill/AutofillId;)V

    new-instance v0, Landroid/os/RemoteCallback;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v6, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {p2, v0}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    const/high16 p2, 0x10000

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_4

    :cond_f
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    iput-object v4, p1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    iput-boolean v2, p1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    iput-object v4, p1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    :goto_4
    const-string/jumbo p1, "failed to request autofill data for "

    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    iget-object v7, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-interface {v0, v3, p2, v7, p3}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result p2

    if-nez p2, :cond_10

    const-string p2, "AutofillSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_10
    :goto_5
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    :goto_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_7
    iget-boolean p1, p0, Lcom/android/server/autofill/Session;->mImproveFillDialogEnabled:Z

    if-eqz p1, :cond_12

    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_11

    const-string p1, "AutofillSession"

    const-string p2, "Enabling Fill Dialog...."

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iput-boolean v2, p2, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0, v4}, Lcom/android/server/autofill/Session;->notifyClientFillDialogTriggerIds(Ljava/util/List;)V

    goto :goto_8

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_12
    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_13
    :goto_9
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_14

    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "requestNewFillResponse(): triggering augmented autofill instead (mForAugmentedAutofillOnly="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", flags="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iput-boolean v3, p1, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget-object p1, p1, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance p2, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p2, v3, v0}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget-object p1, p1, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance p2, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {p1}, Lcom/android/server/autofill/FillRequestEventLogger;->logAndEndEvent()V

    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Ljava/util/Optional;
    .locals 11

    and-int/lit8 v0, p3, 0x1

    const-string v1, "AutofillSession"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iput-boolean v2, v0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Re-starting session on view "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and flags "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0x100

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->shouldRequestSecondaryProvider(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    :goto_0
    const-string v4, ": "

    if-nez v3, :cond_3

    if-eqz v0, :cond_a

    iget v0, v0, Lcom/android/server/autofill/ViewState;->mState:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-nez v0, :cond_a

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Starting a new partition because the response has expired."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-class v5, Lcom/android/server/autofill/AutofillManagerService;

    monitor-enter v5

    :try_start_0
    sget v6, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lt v0, v6, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Not starting a new partition on "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " because session "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " reached maximum of "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lcom/android/server/autofill/AutofillManagerService;

    monitor-enter v5

    :try_start_1
    sget p0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p3, p0, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_d

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/FillResponse;

    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/service/autofill/Dataset;

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_a
    :goto_3
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Not starting new partition for view "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_d
    :goto_4
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Starting partition or augmented request for view id "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iput-boolean v2, p1, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    const/16 p1, 0x20

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final requestShowFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)I
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "Fill dialog not shown since IME has been up for more time than "

    const-string v2, "IME is showing. Timestamps start: "

    iget-object v3, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v4, v4, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    const/4 v12, 0x1

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v4, v12}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    :goto_0
    iget-object v4, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v4, v4, Lcom/android/server/autofill/Session$SessionFlags;->mScreenHasCredmanField:Z

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v4, v6}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    :cond_1
    iget-object v4, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v5, v4, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    const/4 v7, 0x0

    if-nez v5, :cond_2

    iget-boolean v4, v4, Lcom/android/server/autofill/Session$SessionFlags;->mScreenHasCredmanField:Z

    if-nez v4, :cond_2

    move v4, v12

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_5

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "requestShowFillDialog(): fill dialog is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3
    iget-boolean v3, v1, Lcom/android/server/autofill/Session;->mImproveFillDialogEnabled:Z

    if-nez v3, :cond_6

    move/from16 v5, p4

    and-int/lit16 v3, v5, 0x80

    if-eqz v3, :cond_4

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_5

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "requestShowFillDialog(): IME is showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_4
    iget-object v3, v1, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillInlineSessionController;->isImeShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    return v7

    :cond_6
    move/from16 v5, p4

    :cond_7
    iget-object v8, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-object v3, v1, Lcom/android/server/autofill/Session;->mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    if-eqz v3, :cond_8

    move-object/from16 v4, p2

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    move v2, v7

    goto/16 :goto_6

    :cond_9
    iget-boolean v3, v1, Lcom/android/server/autofill/Session;->mImproveFillDialogEnabled:Z

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillInlineSessionController;->isImeShowing()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v13, v1, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    sub-long v13, v9, v13

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_a

    const-string v3, "AutofillSession"

    const-string v11, "IME is showing. Checking for elapsed time "

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "AutofillSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v15, v6

    move v2, v7

    iget-wide v6, v1, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " current: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " duration: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " mFillDialogTimeoutMs: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/server/autofill/Session;->mFillDialogTimeoutMs:J

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :cond_a
    move v15, v6

    move v2, v7

    :goto_2
    iget-boolean v3, v1, Lcom/android/server/autofill/Session;->mWaitForImeAnimation:Z

    if-eqz v3, :cond_b

    const-string v0, "AutofillSession"

    const-string/jumbo v2, "Waiting for ime animation to complete before showing fill dialog"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;

    move-object/from16 v3, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/Session;Ljava/lang/String;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;I)V

    iput-object v0, v1, Lcom/android/server/autofill/Session;->mFillDialogRunnable:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;

    monitor-exit v8

    return v15

    :cond_b
    iget-wide v3, v1, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    iget-wide v5, v1, Lcom/android/server/autofill/Session;->mImeAnimationFinishTimeMs:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    sub-long v6, v9, v3

    iget-object v3, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v4, v3, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;

    const/4 v11, 0x0

    invoke-direct {v5, v3, v9, v10, v11}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;JI)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v3, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-wide v4, v1, Lcom/android/server/autofill/Session;->mLastInputStartTime:J

    iget-wide v9, v1, Lcom/android/server/autofill/Session;->mImeAnimationFinishTimeMs:J

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object v9, v3, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v10, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;

    const/4 v11, 0x1

    invoke-direct {v10, v3, v4, v5, v11}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;JI)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-wide v3, v1, Lcom/android/server/autofill/Session;->mFillDialogTimeoutMs:J

    cmp-long v3, v6, v3

    if-ltz v3, :cond_c

    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Lcom/android/server/autofill/Session;->mFillDialogTimeoutMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    monitor-exit v8

    return v2

    :cond_c
    iget-wide v9, v1, Lcom/android/server/autofill/Session;->mFillDialogMinWaitAfterImeAnimationMs:J

    cmp-long v0, v6, v9

    if-gez v0, :cond_e

    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v2, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/Session;Ljava/lang/String;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;I)V

    iget-object v2, v1, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sub-long/2addr v9, v6

    invoke-virtual {v2, v0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    monitor-exit v8

    return v15

    :cond_d
    move v2, v7

    :cond_e
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/autofill/Session;->getServiceIcon(Landroid/service/autofill/FillResponse;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v10, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v4, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "showFillDialog for "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p1

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v13, "AutofillUI"

    invoke-static {v13, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    move-object/from16 v11, p1

    :goto_3
    const/16 v5, 0x38e

    invoke-static {v5, v8, v7, v3, v4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v3

    if-nez p3, :cond_10

    move v4, v2

    goto :goto_4

    :cond_10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x38f

    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v11}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {v11}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x38d

    invoke-virtual {v3, v4, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    move-object v1, v0

    new-instance v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v3, v11

    move-object v11, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/metrics/LogMaker;)V

    iget-object v1, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v12

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :goto_6
    :try_start_4
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_12

    const-string v0, "AutofillSession"

    const-string v3, "Last fill dialog triggered ids are changed."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetFillDialogNotShownReason(I)V

    monitor-exit v8

    return v2

    :goto_7
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :goto_8
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    const/4 v8, 0x0

    if-nez v3, :cond_0

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "requestShowInlineSuggestionsLocked(): no view currently focused"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v1, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "AutofillSession"

    const-string v1, "InlineSuggestionsRequest unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_3
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "RemoteInlineSuggestionRenderService not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_4
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-boolean v8, v0, Lcom/android/server/autofill/Session;->mLoggedInlineDatasetShown:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v1

    new-instance v1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget v6, v0, Lcom/android/server/autofill/Session;->userId:I

    iget v7, v0, Lcom/android/server/autofill/Session;->id:I

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;-><init>(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)V

    new-instance v4, Lcom/android/server/autofill/Session$3;

    move-object/from16 v5, p1

    invoke-direct {v4, v0, v5, v3}, Lcom/android/server/autofill/Session$3;-><init>(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v6, v3, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mMaxInputLengthForAutofill:I

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v6

    const-string/jumbo v7, "android:autofill"

    const/4 v9, 0x1

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v10

    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_5

    goto :goto_1

    :cond_5
    move v9, v8

    :goto_1
    new-instance v11, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;

    invoke-direct {v11, v4, v10}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/Session$3;I)V

    invoke-static {v2, v8, v6, v9}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;Z)Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v5

    invoke-static {v2, v1, v7, v5}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v18

    const-string/jumbo v14, "android:autofill"

    const-string/jumbo v16, "android:autofill:action"

    new-instance v12, Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v6}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v13

    invoke-virtual {v6}, Landroid/service/autofill/InlinePresentation;->getAutofillHints()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v17

    invoke-direct/range {v12 .. v18}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    new-instance v2, Landroid/view/inputmethod/InlineSuggestion;

    new-instance v5, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-direct {v5, v1, v6, v11, v4}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    new-instance v4, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-direct {v2, v12, v4}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    new-instance v4, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/view/inputmethod/InlineSuggestion;I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    move v8, v9

    :cond_7
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v7, v2, v4, v8}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestions(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Z)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v4, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;I)V

    goto :goto_2

    :cond_8
    new-instance v4, Lcom/android/server/autofill/ui/InlineFillUi;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;I)V

    :goto_2
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iput-object v4, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "AutofillSession"

    const-string v0, "Error sending input show up notification"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V
    .locals 6

    const-string v0, "Error sending credential response to activity: "

    const-string/jumbo v1, "Skipping sending credential response to view: "

    const-string v2, "Call to Session#sendCredentialManagerResponseToApp() rejected - session: "

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v4, :cond_0

    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v5, v4, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mIsFillFieldsFromCurrentSessionOnly:Z

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    :try_start_3
    iget-object v2, v2, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2}, Landroid/view/autofill/AutofillId;->getSessionId()I

    move-result v2

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    if-eq v2, v4, :cond_1

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    const-string v2, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as it isn\'t part of the current session: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/autofill/Session;->sendResponseToViewNode(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p3, v1, p1}, Landroid/view/autofill/IAutoFillManagerClient;->onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_5

    invoke-virtual {p3}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/autofill/Session;->sendResponseToViewNode(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {p1, p0, p3, p2}, Landroid/view/autofill/IAutoFillManagerClient;->onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V

    goto :goto_2

    :cond_5
    const-string p0, "AutofillSession"

    const-string/jumbo p1, "sendCredentialManagerResponseToApp called with null responseand exception"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v3

    return-void

    :goto_3
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final sendResponseToViewNode(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillContext;

    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v1

    new-instance v2, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p3}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getPendingCredentialCallback()Landroid/os/ResultReceiver;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_2

    const-string/jumbo p1, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getPendingCredentialCallback()Landroid/os/ResultReceiver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getPendingCredentialCallback()Landroid/os/ResultReceiver;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3
    return-void

    :cond_4
    const-string p0, "AutofillSession"

    const-string/jumbo p1, "View node not found after GetCredentialResponse"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setAuthenticationResultLocked(ILandroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    iget-boolean v3, v1, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v4, "AutofillSession"

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Call to Session#setAuthenticationResultLocked() rejected - session: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/autofill/Session;->id:I

    const-string v2, " destroyed"

    invoke-static {v1, v2, v4, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_0
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setAuthenticationResultLocked(): id= "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", data="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->getRequestIdFromAuthenticationId(I)I

    move-result v3

    const-string/jumbo v5, "android.view.autofill.extra.CLIENT_STATE"

    const-string/jumbo v6, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v3, v8, :cond_e

    if-nez v2, :cond_2

    move-object v3, v7

    goto :goto_0

    :cond_2
    const-class v3, Landroid/service/autofill/Dataset;

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/Dataset;

    :goto_0
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Auth result for augmented autofill: sessionId="

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v1, Lcom/android/server/autofill/Session;->id:I

    const-string v11, ", authId="

    const-string v12, ", dataset="

    invoke-static {v10, v0, v11, v12, v6}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_4

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    move-object v6, v0

    goto :goto_1

    :cond_4
    move-object v6, v7

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_5

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillValue;

    move-object v9, v0

    goto :goto_2

    :cond_5
    move-object v9, v7

    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    move-result-object v0

    move-object v10, v0

    goto :goto_3

    :cond_6
    move-object v10, v7

    :goto_3
    if-eqz v6, :cond_c

    if-nez v9, :cond_7

    if-nez v10, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    if-nez v0, :cond_8

    const-string v0, "Can\'t fill after auth: RemoteAugmentedAutofillService is null"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v11, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iput-object v7, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    iget v7, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    iput-object v6, v1, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v5, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v7, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v7, v11, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    if-eqz v10, :cond_9

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getAutofillUriGrantsManager()Lcom/android/server/autofill/AutofillUriGrantsManager;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    iget v7, v1, Lcom/android/server/autofill/Session;->userId:I

    invoke-virtual {v0, v2, v5, v7, v10}, Lcom/android/server/autofill/AutofillUriGrantsManager;->grantUriPermissions(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/content/ClipData;)V

    :cond_9
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v2, ", content="

    const-string v5, ", value="

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Filling after auth: fieldId="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v10, :cond_b

    :try_start_2
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v0, v3, v6, v10}, Landroid/view/autofill/IAutoFillManagerClient;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_b
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v7, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v7, v11, v3, v8}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Error filling after auth: fieldId="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    new-instance v2, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v2, v6}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    iput-object v2, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    goto :goto_7

    :cond_c
    :goto_6
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Rejecting empty/invalid auth result"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v10, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_3
    iput-object v7, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    :goto_7
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string/jumbo v1, "authentication - augmented"

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_e
    iget-object v10, v1, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v11, 0x2

    if-nez v10, :cond_f

    const-string/jumbo v2, "setAuthenticationResultLocked("

    const-string v3, "): no responses"

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v11}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string/jumbo v2, "authentication - no response"

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    :cond_f
    rem-int/lit8 v12, v3, 0x2

    if-ne v12, v8, :cond_10

    iget-object v10, v1, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/service/autofill/FillResponse;

    goto :goto_8

    :cond_10
    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/service/autofill/FillResponse;

    :goto_8
    if-eqz v10, :cond_11

    if-nez v2, :cond_12

    :cond_11
    move v3, v11

    goto/16 :goto_11

    :cond_12
    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->getDatasetIdFromAuthenticationId(I)I

    move-result v13

    const v14, 0xffff

    if-eq v13, v14, :cond_13

    invoke-virtual {v10}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/autofill/Dataset;

    if-nez v15, :cond_14

    const-string/jumbo v0, "no dataset with index "

    const-string v2, " on fill response"

    invoke-static {v13, v0, v2, v4}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v11}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string/jumbo v2, "authentication - no datasets"

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void

    :cond_13
    move-object v15, v7

    :cond_14
    iget-object v11, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iput-boolean v9, v11, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    const-string/jumbo v11, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    const-class v14, Landroid/credentials/GetCredentialException;

    invoke-virtual {v2, v11, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Landroid/credentials/GetCredentialException;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    sget-boolean v14, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v14, :cond_15

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setAuthenticationResultLocked(): result="

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", clientState="

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", authenticationId="

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_15
    if-eqz v11, :cond_17

    invoke-virtual {v11}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v14, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    if-eqz v15, :cond_1c

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_1c

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_16

    const-string/jumbo v0, "setAuthenticationResultLocked(): result returns withCredential Manager Exception"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2, v0}, Lcom/android/server/autofill/Session;->sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V

    return-void

    :cond_17
    instance-of v7, v6, Landroid/service/autofill/FillResponse;

    const/16 v11, 0x5ad

    if-eqz v7, :cond_19

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "setAuthenticationResultLocked(): received FillResponse from authentication flow"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v0, 0x390

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v11, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v8}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    check-cast v6, Landroid/service/autofill/FillResponse;

    invoke-virtual {v1, v10, v8, v8, v8}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V

    invoke-virtual {v10}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    invoke-virtual {v1, v6, v5, v9}, Lcom/android/server/autofill/Session;->processResponseLockedForPcc(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    return-void

    :cond_19
    instance-of v7, v6, Landroid/credentials/GetCredentialResponse;

    if-eqz v7, :cond_1d

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "Received GetCredentialResponse from authentication flow"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    check-cast v6, Landroid/credentials/GetCredentialResponse;

    if-eqz v15, :cond_1c

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_1c

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Received GetCredentialResponse from authentication flow,for autofillId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6, v0}, Lcom/android/server/autofill/Session;->sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V

    :cond_1c
    return-void

    :cond_1d
    instance-of v7, v6, Landroid/service/autofill/Dataset;

    if-eqz v7, :cond_2d

    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_1e

    const-string/jumbo v7, "setAuthenticationResultLocked(): received Dataset from authentication flow"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const v7, 0xffff

    if-eq v13, v7, :cond_2c

    const/16 v0, 0x466

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v11, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v8}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    if-eqz v5, :cond_21

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "Updating client state from auth dataset"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    if-ne v12, v8, :cond_20

    iput-object v5, v1, Lcom/android/server/autofill/Session;->mClientStateForSecondary:Landroid/os/Bundle;

    goto :goto_9

    :cond_20
    iput-object v5, v1, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    :cond_21
    :goto_9
    check-cast v6, Landroid/service/autofill/Dataset;

    new-instance v0, Landroid/service/autofill/FillResponse$Builder;

    invoke-direct {v0}, Landroid/service/autofill/FillResponse$Builder;-><init>()V

    invoke-virtual {v0, v6}, Landroid/service/autofill/FillResponse$Builder;->addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse$Builder;->build()Landroid/service/autofill/FillResponse;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/Session;->getEffectiveFillResponse(Landroid/service/autofill/FillResponse;)Landroid/service/autofill/FillResponse;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_22

    goto/16 :goto_c

    :cond_22
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/Dataset;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_25

    new-instance v0, Landroid/service/autofill/Dataset$Builder;

    invoke-direct {v0}, Landroid/service/autofill/Dataset$Builder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/Dataset;

    invoke-virtual {v5}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_23

    move v7, v9

    :goto_a
    invoke-virtual {v5}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_23

    invoke-virtual {v5}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/autofill/AutofillId;

    new-instance v12, Landroid/service/autofill/Field$Builder;

    invoke-direct {v12}, Landroid/service/autofill/Field$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v12, v14}, Landroid/service/autofill/Field$Builder;->setValue(Landroid/view/autofill/AutofillValue;)Landroid/service/autofill/Field$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/service/autofill/Field$Builder;->build()Landroid/service/autofill/Field;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/service/autofill/Dataset$Builder;->setField(Landroid/view/autofill/AutofillId;Landroid/service/autofill/Field;)Landroid/service/autofill/Dataset$Builder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_24
    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/service/autofill/Dataset$Builder;->setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/autofill/Dataset$Builder;->build()Landroid/service/autofill/Dataset;

    move-result-object v6

    :goto_b
    move-object v4, v6

    goto :goto_e

    :cond_25
    move-object v4, v0

    goto :goto_e

    :cond_26
    :goto_c
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "No datasets in fill response on authentication. response = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_27

    const-string/jumbo v0, "null"

    goto :goto_d

    :cond_27
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :goto_e
    invoke-virtual {v10}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/Dataset;

    const-string/jumbo v5, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    goto :goto_10

    :cond_28
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v9

    :goto_f
    if-ge v5, v2, :cond_2a

    invoke-virtual {v0, v5}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    if-eqz v6, :cond_29

    invoke-virtual {v6}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_29

    goto :goto_10

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_2a
    move v8, v9

    :goto_10
    if-nez v8, :cond_2b

    invoke-virtual {v10}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, v3

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;ZI)V

    return-void

    :cond_2c
    move v2, v3

    move v3, v13

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "invalid index ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") for authentication id "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x467

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v11, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    return-void

    :cond_2d
    move v2, v3

    if-eqz v6, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "service returned invalid auth type: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/16 v0, 0x468

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v11, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    invoke-virtual {v1, v2, v9}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    return-void

    :goto_11
    const-string/jumbo v0, "no authenticated response"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string/jumbo v2, "authentication - bad response"

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->removeFromService()V

    return-void
.end method

.method public final setClientLocked(Landroid/os/IBinder;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    :try_start_0
    invoke-interface {p1}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string/jumbo v0, "could not set binder death listener on autofill client: "

    const-string v1, "AutofillSession"

    invoke-static {v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    return-void
.end method

.method public final setFillDialogDisabled()V
    .locals 3

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillSession"

    const-string v1, "Disabling Fill Dialog."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->notifyClientFillDialogTriggerIds(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V
    .locals 11

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/service/autofill/Dataset;

    if-nez v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring null dataset on "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AutofillSession"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p0

    move-object v6, p1

    move v8, p2

    move v9, p3

    move v10, p4

    goto :goto_1

    :cond_0
    move-object v5, p0

    move-object v6, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZZ)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object p0, v5

    move-object p1, v6

    move p2, v8

    move p3, v9

    move p4, v10

    goto :goto_0

    :cond_1
    move-object v5, p0

    move-object v6, p1

    move v8, p2

    goto :goto_4

    :cond_2
    move-object v5, p0

    move-object v6, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object p0

    array-length p1, p0

    move p2, v2

    :goto_2
    if-ge p2, p1, :cond_6

    aget-object p3, p0, p2

    invoke-virtual {v5, p3, v8, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object p3

    if-nez v9, :cond_4

    if-eqz v10, :cond_3

    iput-object v6, p3, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_3

    :cond_3
    iput-object v6, p3, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_3

    :cond_4
    if-eqz v10, :cond_5

    iput-object v1, p3, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_3

    :cond_5
    iput-object v1, p3, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object p1

    if-eqz p1, :cond_7

    array-length p2, p1

    move p3, v2

    :goto_5
    if-ge p3, p2, :cond_7

    aget-object p4, p1, p3

    invoke-virtual {v5, p4, v8, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object p0

    if-eqz p0, :cond_8

    array-length p1, p0

    move p2, v2

    :goto_6
    if-ge p2, p1, :cond_8

    aget-object p3, p0, p2

    invoke-virtual {v5, p3, v8, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v6}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object p0

    if-eqz p0, :cond_9

    array-length p1, p0

    :goto_7
    if-ge v2, p1, :cond_9

    aget-object p2, p0, v2

    invoke-virtual {v5, p2, v8, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    return-void
.end method

.method public final setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZZ)V
    .locals 5

    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    invoke-virtual {p0, v3, p3, v4}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v3

    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iput-object v4, v3, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    :cond_0
    if-eqz p4, :cond_2

    const/4 v4, 0x0

    if-eqz p5, :cond_1

    iput-object v4, v3, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_1

    :cond_1
    iput-object v4, v3, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    iput-object p1, v3, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_1

    :cond_3
    iput-object p1, v3, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final shouldAddEventToHistory()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "shouldAddEventToHistory(%s)"

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final shouldRequestSecondaryProvider(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCredmanIntegrationEnabled:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    if-eqz p0, :cond_1

    and-int/lit16 p0, p1, 0x800

    if-nez p0, :cond_2

    goto :goto_0

    :cond_1
    and-int/lit16 p0, p1, 0x800

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 8

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "AutofillSession"

    const-string p2, "Error launching auth intent"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "Call to Session#startIntentSender() rejected - session: "

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_0

    const-string p1, "AutofillSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " destroyed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final startNewEventForPresentationStatsEventLogger()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->startNewEvent()V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getDetectionPreferenceForLogging()I

    move-result v2

    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/16 v4, 0xc

    invoke-direct {v3, v2, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    move-result p0

    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Session: [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    invoke-static {p0}, Lcom/android/server/autofill/Session;->sessionStateAsString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;
    .locals 12

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v2, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/autofill/AutofillManagerService;

    iget v2, v2, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    const-string v3, "AutofillSession"

    if-nez v2, :cond_1

    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_2

    const-string/jumbo p0, "triggerAugmentedAutofillLocked(): no supported modes"

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    if-nez v0, :cond_3

    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_2

    const-string/jumbo p0, "triggerAugmentedAutofillLocked(): no service for user"

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_10

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v2, :cond_4

    const-string/jumbo p0, "triggerAugmentedAutofillLocked(): no view currently focused"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v5, Lcom/android/server/autofill/AutofillManagerService;

    iget-object v5, v5, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v5, v2, v4}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    move-result v10

    const/4 v7, 0x1

    if-nez v10, :cond_6

    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "triggerAugmentedAutofillLocked(): "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not whitelisted "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/autofill/Session;->logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V

    return-object v1

    :cond_6
    move-object v6, p0

    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "calling Augmented Autofill Service ("

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") on view "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " using suggestion mode "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " when server returned null for session "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/android/server/autofill/Session;->id:I

    invoke-static {p0, v2, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_7
    iget-object p0, v6, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/FillRequestEventLogger;->startLogForNewRequest()V

    iget p0, v6, Lcom/android/server/autofill/Session;->mRequestCount:I

    const/4 v2, 0x1

    add-int/2addr p0, v2

    iput p0, v6, Lcom/android/server/autofill/Session;->mRequestCount:I

    iget-object p0, v6, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget v4, v6, Lcom/android/server/autofill/Session;->uid:I

    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v5, v4, v7}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p0, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, v6, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget v4, v6, Lcom/android/server/autofill/Session;->mFlags:I

    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v5, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    const/4 v7, 0x4

    invoke-direct {v5, v4, v7}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p0, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, v6, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v5}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, v6, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    iget-object p0, p0, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, v6, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-virtual {p0}, Lcom/android/server/autofill/FillRequestEventLogger;->logAndEndEvent()V

    iget-object p0, v6, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v2, v6, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/ViewState;

    const/16 v2, 0x1000

    invoke-virtual {p0, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    iget-object v2, v6, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v6, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v5, v6, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v7, v6, Lcom/android/server/autofill/Session;->mCompatMode:Z

    const/16 v8, 0x65e

    invoke-static {v8, v4, v2, v5, v7}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v2

    iget-object v4, v6, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v6, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    new-instance v4, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;

    invoke-direct {v4, v6, v2, v10, p0}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;)V

    iget-object p0, v6, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object p0

    if-eqz p0, :cond_c

    iget-object v5, v6, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v7, v5, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    if-nez v7, :cond_9

    iget-boolean v7, v5, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    if-eqz v7, :cond_9

    iget-boolean v5, v5, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    if-eqz v5, :cond_c

    :cond_9
    and-int/lit8 v5, p1, 0x10

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_c

    :goto_1
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_b

    const-string p1, "Create inline request for augmented autofill"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance p1, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;

    invoke-direct {v1, v6, v2, v4}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;)V

    iget-object v2, v6, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    goto :goto_3

    :cond_c
    iget-object p0, v6, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz p0, :cond_e

    iget-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz p1, :cond_d

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_2

    :cond_d
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_2

    :cond_e
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_2
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {v4, p0}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->accept(Ljava/lang/Object;)V

    :goto_3
    iget-object p0, v6, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez p0, :cond_f

    new-instance p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    iput-object p0, v6, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    :cond_f
    iget-object p0, v6, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    return-object p0

    :cond_10
    const-string/jumbo p0, "Unsupported Smart Suggestion mode: "

    invoke-static {v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final unlinkClientVultureLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unlinking vulture from death failed for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    :cond_1
    return-void
.end method

.method public final unregisterDelayedFillBroadcastLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "unregisterDelayedFillBroadcastLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Lcom/android/server/autofill/Session$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method public final updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    iget-boolean v6, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v6, :cond_0

    const-string v0, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateLocked("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "):  rejected - session: destroyed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x5

    if-ne v4, v8, :cond_2

    iget-object v2, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iput-boolean v7, v2, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateLocked("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): Set the response has expired."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string v2, "ACTION_RESPONSE_EXPIRED"

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iput-object v6, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    iget-object v0, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_57

    iput-object v6, v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    return-void

    :cond_2
    iget v9, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v9}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/autofill/ViewState;

    sget-boolean v10, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-eqz v10, :cond_8

    const-string v10, "AutofillSession"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "updateLocked("

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "): id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", action="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v4, v7, :cond_7

    if-eq v4, v13, :cond_6

    if-eq v4, v11, :cond_5

    if-eq v4, v12, :cond_4

    if-eq v4, v8, :cond_3

    const-string/jumbo v15, "UNKNOWN_"

    invoke-static {v4, v15}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_3
    const-string/jumbo v15, "RESPONSE_EXPIRED"

    goto :goto_0

    :cond_4
    const-string/jumbo v15, "VALUE_CHANGED"

    goto :goto_0

    :cond_5
    const-string/jumbo v15, "VIEW_EXITED"

    goto :goto_0

    :cond_6
    const-string/jumbo v15, "VIEW_ENTERED"

    goto :goto_0

    :cond_7
    const-string/jumbo v15, "START_SESSION"

    :goto_0
    const-string v8, ", flags="

    const-string v11, ", mCurrentViewId="

    invoke-static {v5, v15, v8, v11, v14}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", mExpiredResponse="

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v8, v8, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", viewState="

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v8, 0x0

    if-nez v9, :cond_f

    if-eq v4, v7, :cond_a

    if-eq v4, v12, :cond_a

    if-ne v4, v13, :cond_9

    goto :goto_1

    :cond_9
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_57

    const-string v0, "AutofillSession"

    const-string v1, "Ignoring specific action when viewState=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    :goto_1
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_b

    const-string v9, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Creating viewState for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v0, v6}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v9

    if-nez v9, :cond_c

    move v9, v8

    goto :goto_2

    :cond_c
    invoke-virtual {v9}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    :goto_2
    new-instance v10, Lcom/android/server/autofill/ViewState;

    if-eqz v9, :cond_d

    const/16 v11, 0x80

    goto :goto_3

    :cond_d
    move v11, v7

    :goto_3
    iget-boolean v14, v0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    invoke-direct {v10, v1, v0, v11, v14}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;IZ)V

    iget-object v11, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v11, v1, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_e

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_57

    const-string v0, "AutofillSession"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateLocked(): ignoring view "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    move-object v9, v10

    :cond_f
    and-int/lit16 v10, v5, 0x100

    if-eqz v10, :cond_11

    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_10

    const-string v10, "AutofillSession"

    const-string/jumbo v11, "force to reset fill dialog state"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iput-boolean v8, v10, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    :cond_11
    and-int/lit16 v10, v5, 0x200

    if-eqz v10, :cond_12

    invoke-virtual {v0, v5}, Lcom/android/server/autofill/Session;->requestAssistStructureForPccLocked(I)V

    return-void

    :cond_12
    and-int/lit16 v10, v5, 0x400

    if-eqz v10, :cond_13

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iput-boolean v7, v10, Lcom/android/server/autofill/Session$SessionFlags;->mScreenHasCredmanField:Z

    :cond_13
    if-eq v4, v7, :cond_52

    if-eq v4, v13, :cond_3b

    const/4 v10, 0x3

    if-eq v4, v10, :cond_36

    if-eq v4, v12, :cond_14

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "updateLocked(): unknown action: "

    invoke-static {v4, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    iget-boolean v4, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v4, :cond_1c

    iget v4, v9, Lcom/android/server/autofill/ViewState;->mState:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_1c

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v1, :cond_15

    move-object v1, v6

    goto :goto_4

    :cond_15
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_4
    if-nez v1, :cond_16

    const-string/jumbo v1, "URL bar value changed, but current value is null"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_16
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_5

    :cond_17
    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_57

    const-string v0, "AutofillSession"

    const-string v1, "Ignoring change on URL bar as it\'s the same"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    iget-boolean v1, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v1, :cond_19

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_57

    const-string v0, "AutofillSession"

    const-string v1, "Ignoring change on URL because session will finish when views are gone"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1a

    const-string v1, "AutofillSession"

    const-string v2, "Finishing session because URL bar changed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    return-void

    :cond_1b
    :goto_5
    const-string/jumbo v1, "URL bar value changed to null or non-text: %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1c
    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1d
    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v4

    if-eqz v4, :cond_1f

    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_1e

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "updateLocked("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "): resetting value that was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " chars long"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AutofillSession"

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/16 v10, 0x464

    invoke-virtual {v0, v10}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v11, 0x465

    invoke-virtual {v10, v11, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v10, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_1f
    iget-boolean v4, v0, Lcom/android/server/autofill/Session;->mIgnoreViewStateResetToEmpty:Z

    const-string v10, "AutofillSession"

    if-eqz v4, :cond_22

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_20
    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_22

    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, v7, :cond_22

    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_21

    const-string/jumbo v4, "value is resetting to empty, caching the last non-empty value"

    invoke-static {v10, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    iput-object v4, v9, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    goto :goto_6

    :cond_22
    iput-object v6, v9, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    :goto_6
    if-eqz v3, :cond_25

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_7

    :cond_23
    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_24

    goto :goto_7

    :cond_24
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_25
    :goto_7
    const-string v4, ""

    if-nez v6, :cond_26

    move-object v11, v4

    goto :goto_8

    :cond_26
    move-object v11, v6

    :goto_8
    iget-object v13, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-eqz v13, :cond_28

    invoke-virtual {v13}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v14

    if-nez v14, :cond_27

    goto :goto_9

    :cond_27
    invoke-virtual {v13}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_28
    :goto_9
    iget v13, v9, Lcom/android/server/autofill/ViewState;->mState:I

    const/16 v14, 0x4000

    and-int/2addr v13, v14

    const/4 v15, -0x1

    const v8, 0x8000

    if-nez v13, :cond_2b

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v13, v4

    move/from16 v16, v15

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v13, :cond_2a

    move/from16 v17, v7

    aget-char v7, v4, v2

    move/from16 v18, v12

    add-int/lit8 v12, v16, 0x1

    invoke-static {v11, v7, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    if-ne v7, v15, :cond_29

    invoke-virtual {v9, v14}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_c

    :cond_29
    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v7

    move/from16 v7, v17

    move/from16 v12, v18

    goto :goto_a

    :cond_2a
    move/from16 v17, v7

    move/from16 v18, v12

    goto :goto_c

    :cond_2b
    move/from16 v17, v7

    move/from16 v18, v12

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v7, v2

    move v12, v15

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v7, :cond_2d

    aget-char v13, v2, v11

    add-int/lit8 v12, v12, 0x1

    invoke-static {v4, v13, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v12

    if-ne v12, v15, :cond_2c

    invoke-virtual {v9, v8}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_c

    :cond_2c
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_2d
    :goto_c
    iput-object v3, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    iget-object v2, v9, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    if-eqz v6, :cond_2e

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v7, v4, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v11, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;

    invoke-direct {v11, v4, v9, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;)V

    invoke-virtual {v7, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2e
    const/16 v4, 0x8

    if-eqz v2, :cond_32

    invoke-virtual {v2, v3}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ignoring autofilled change on id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v1, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v9, v4}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    return-void

    :cond_30
    iget-object v2, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, v9, Lcom/android/server/autofill/ViewState;->mState:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_32

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "field changed after autofill on id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move/from16 v1, v18

    invoke-virtual {v9, v1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    invoke-virtual {v1, v5}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    :cond_32
    iget-object v1, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget v1, v9, Lcom/android/server/autofill/ViewState;->mState:I

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_34

    and-int/2addr v1, v8

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v2, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v3, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz v3, :cond_33

    iget-object v3, v3, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v1, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    move/from16 v2, v17

    iput-boolean v2, v1, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    :cond_33
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v3, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz v3, :cond_35

    iget-object v3, v3, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    iput-object v6, v2, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    goto :goto_d

    :cond_34
    iget-object v1, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget v1, v9, Lcom/android/server/autofill/ViewState;->mState:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-eqz v1, :cond_35

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V

    :cond_35
    :goto_d
    invoke-virtual {v9, v4}, Lcom/android/server/autofill/ViewState;->setState(I)V

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1, v0, v6}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_36
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v3, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_37

    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exiting view "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v0, v3}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    iget-object v1, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    iget-object v1, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget v1, v9, Lcom/android/server/autofill/ViewState;->mState:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-eqz v1, :cond_38

    invoke-virtual {v9, v2}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    :cond_38
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iput-object v6, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    iget-object v1, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v1, :cond_39

    iput-object v6, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    :cond_39
    iget v1, v9, Lcom/android/server/autofill/ViewState;->mState:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3a

    goto :goto_e

    :cond_3a
    iput-object v6, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    :goto_e
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v0, v13}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    return-void

    :cond_3b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    iget-boolean v4, v0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_3c

    if-eqz v2, :cond_3c

    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "entered on virtual child "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v7, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v7, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v3, :cond_3d

    iput-object v3, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    :cond_3d
    if-nez v6, :cond_3e

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mPreviousNonNullEnteredViewId:Landroid/view/autofill/AutofillId;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :cond_3e
    iget-object v7, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v7, :cond_3f

    iput-object v7, v0, Lcom/android/server/autofill/Session;->mPreviousNonNullEnteredViewId:Landroid/view/autofill/AutofillId;

    :cond_3f
    and-int/lit16 v7, v5, 0x800

    if-eqz v7, :cond_40

    const/4 v7, 0x1

    goto :goto_f

    :cond_40
    const/4 v7, 0x0

    :goto_f
    invoke-virtual {v0, v5}, Lcom/android/server/autofill/Session;->shouldRequestSecondaryProvider(I)Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-virtual {v0, v1, v9, v5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "Started a new fill request for secondary provider."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_41
    iget-object v1, v9, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    if-eqz v1, :cond_42

    invoke-virtual {v0, v1, v7}, Lcom/android/server/autofill/Session;->logPresentationStatsOnViewEnteredLocked(Landroid/service/autofill/FillResponse;Z)V

    :cond_42
    if-eqz v3, :cond_43

    iput-object v3, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    :cond_43
    if-eqz v2, :cond_44

    iput-object v2, v9, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    :cond_44
    invoke-virtual {v9, v5}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    return-void

    :cond_45
    iget-boolean v8, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v8, :cond_46

    iget v8, v9, Lcom/android/server/autofill/ViewState;->mState:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_46

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_57

    const-string v0, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring VIEW_ENTERED on URL BAR (id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_46
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v10, v0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    if-nez v10, :cond_47

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v11, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v12, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->shouldAddEventToHistory()Z

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logViewEntered(ILandroid/view/autofill/AutofillId;Z)V

    :cond_47
    const/4 v10, 0x1

    goto :goto_10

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :goto_10
    iput-boolean v10, v0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v8, v5, 0x1

    if-nez v8, :cond_4b

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v8, :cond_4a

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    if-nez v6, :cond_49

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_48

    const-string v1, "AutofillSession"

    const-string/jumbo v2, "trigger augmented autofill."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    invoke-virtual {v0, v5}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    return-void

    :cond_49
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_57

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "skip augmented autofill for same view: same view entered"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4a
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    iget-boolean v8, v8, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    if-eqz v8, :cond_4b

    if-eqz v6, :cond_4b

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_57

    const-string v0, "AutofillSession"

    const-string/jumbo v1, "skip augmented autofill for same view: standard autofill disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4b
    invoke-virtual {v0, v1, v9, v5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Ljava/util/Optional;

    move-result-object v1

    if-nez v4, :cond_4d

    if-eqz v6, :cond_4c

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_4d

    :cond_4c
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    const-string/jumbo v8, "new view entered"

    invoke-virtual {v4, v8}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->startNewEventForPresentationStatsEventLogger()V

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, v4, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v8, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v10, 0x7

    invoke-direct {v8, v1, v10}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v4, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4d
    iget-object v1, v9, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0, v1, v7}, Lcom/android/server/autofill/Session;->logPresentationStatsOnViewEnteredLocked(Landroid/service/autofill/FillResponse;Z)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    invoke-direct {v4, v7, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v6, :cond_4f

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    if-nez v1, :cond_4e

    const/4 v8, 0x0

    goto :goto_11

    :cond_4e
    iget-object v1, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v8

    :goto_11
    if-eqz v8, :cond_57

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4f
    if-eqz v3, :cond_50

    iput-object v3, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    :cond_50
    if-eqz v2, :cond_51

    iput-object v2, v9, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    :cond_51
    invoke-virtual {v9, v5}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    return-void

    :goto_12
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_52
    iget-object v1, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v1, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iput-object v1, v0, Lcom/android/server/autofill/Session;->mPreviousNonNullEnteredViewId:Landroid/view/autofill/AutofillId;

    if-eqz v3, :cond_53

    iput-object v3, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    :cond_53
    if-eqz v2, :cond_54

    iput-object v2, v9, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    :cond_54
    invoke-virtual {v9, v5}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->startNewEventForPresentationStatsEventLogger()V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    and-int/lit8 v1, v5, 0x40

    if-eqz v1, :cond_55

    const/4 v2, 0x1

    goto :goto_13

    :cond_55
    const/4 v2, 0x0

    :goto_13
    if-nez v2, :cond_56

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    goto :goto_14

    :cond_56
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    :goto_14
    const/16 v1, 0x10

    invoke-virtual {v0, v9, v1, v5}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;

    const/4 v3, 0x7

    invoke-direct {v2, v1, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_57
    return-void
.end method

.method public final updateTrackedIdsLocked()V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "AutofillSession"

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_10

    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getTriggerId()Landroid/view/autofill/AutofillId;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v10, 0x4cc

    invoke-virtual {v0, v10}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget-object v9, v9, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v10, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {v10, v11, v12}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v9

    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_2

    move v10, v7

    goto :goto_0

    :cond_2
    move v10, v4

    :goto_0
    iput-boolean v10, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    iget-object v10, v10, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v11, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v11

    iget-object v10, v10, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v12, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    const/4 v13, 0x2

    invoke-direct {v12, v11, v13}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v10, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget v11, v0, Lcom/android/server/autofill/Session;->uid:I

    iget-object v10, v10, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v12, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    const/4 v13, 0x0

    invoke-direct {v12, v11, v13}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v10, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget-object v10, v10, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v11, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget-object v10, v10, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v11, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    const/4 v12, 0x1

    invoke-direct {v11, v9, v12}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean v10, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v10, :cond_4

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v11, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget-object v11, v11, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v12, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    const/4 v13, 0x3

    invoke-direct {v12, v7, v13}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v11, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v11, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget-object v11, v11, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v12, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    const/4 v13, 0x3

    invoke-direct {v12, v6, v13}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v11, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_4
    move-object v10, v2

    :cond_5
    :goto_1
    and-int/lit8 v6, v9, 0x2

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iget-object v6, v6, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v11, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    const/4 v12, 0x3

    invoke-direct {v11, v4, v12}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v6, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    move v13, v4

    :goto_2
    move-object v15, v8

    goto :goto_3

    :cond_6
    move v13, v7

    goto :goto_2

    :cond_7
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    invoke-virtual {v8, v6}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    move-object v10, v2

    move-object v15, v10

    move v9, v4

    move v13, v7

    :goto_3
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v6

    if-eqz v6, :cond_8

    move v6, v7

    goto :goto_4

    :cond_8
    move v6, v4

    :goto_4
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    move-object v11, v2

    move v8, v4

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_f

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/autofill/Dataset;

    invoke-virtual {v12}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v14

    if-nez v14, :cond_9

    goto :goto_7

    :cond_9
    move v2, v4

    :goto_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_c

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    if-eqz v4, :cond_b

    if-eqz v10, :cond_a

    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    :cond_a
    invoke-static {v11, v4}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v4

    move-object v11, v4

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v12}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v2

    if-eqz v2, :cond_d

    move v6, v7

    :cond_d
    :goto_7
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_5

    :cond_e
    const/4 v11, 0x0

    :cond_f
    :try_start_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTrackedIdsLocked(): trackedViews: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " fillableIds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " triggerId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " saveOnFinish:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hasSaveInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_10

    goto :goto_8

    :cond_10
    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_f

    :cond_11
    :goto_9
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, v0, Lcom/android/server/autofill/Session;->id:I

    if-nez v10, :cond_12

    const/4 v3, 0x0

    goto :goto_b

    :cond_12
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/autofill/AutofillId;

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_13
    :goto_b
    iget-boolean v12, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-nez v11, :cond_14

    const/4 v14, 0x0

    :goto_c
    move v10, v2

    move-object v11, v3

    move/from16 v16, v6

    goto :goto_e

    :cond_14
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/autofill/AutofillId;

    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_15

    invoke-virtual {v11, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_15
    move-object v14, v0

    goto :goto_c

    :goto_e
    invoke-interface/range {v9 .. v16}, Landroid/view/autofill/IAutoFillManagerClient;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_f
    const-string v2, "Cannot set tracked ids"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public final updateValuesForSaveLocked()V
    .locals 15

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_a

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/FillContext;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    new-array v6, v5, [Landroid/view/autofill/AutofillId;

    move v7, v2

    :goto_1
    if-ge v7, v5, :cond_0

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/ViewState;

    iget-object v8, v8, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v6}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v7, "updateValuesForSaveLocked(): updating "

    const-string v8, "AutofillSession"

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v6, v2

    :goto_2
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v6, v9, :cond_8

    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/autofill/ViewState;

    iget-object v10, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v11, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    if-nez v11, :cond_2

    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "updateValuesForSaveLocked(): skipping "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    aget-object v12, v5, v6

    if-nez v12, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "callSaveLocked(): did not find node with id "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v9, v9, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    if-nez v9, :cond_5

    invoke-virtual {p0, v0, v10, v11}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v9

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v12, v9}, Landroid/app/assist/AssistStructure$ViewNode;->updateAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_3

    :cond_6
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "updateValuesForSaveLocked(): not updating field "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " because it failed sanitization"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateValuesForSaveLocked(): dumping structure of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " before calling service.save()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/assist/AssistStructure;->dump(Z)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final varargs wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    invoke-virtual {p0, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const-string p0, "AutofillSession"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string p0, "AutofillSession"

    invoke-static {p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
