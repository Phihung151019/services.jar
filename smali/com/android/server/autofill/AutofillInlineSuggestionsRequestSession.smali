.class public final Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAutofillId:Landroid/view/autofill/AutofillId;

.field public mDestroyed:Z

.field public final mHandler:Landroid/os/Handler;

.field public mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

.field public mImeInputStarted:Z

.field public mImeInputViewStarted:Z

.field public mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field public mImeRequestConsumer:Ljava/util/function/Consumer;

.field public mImeRequestReceived:Z

.field public mImeSessionInvalidated:Z

.field public mImeShowing:Z

.field public mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

.field public final mLock:Ljava/lang/Object;

.field public mPreviousHasNonPinSuggestionShow:Z

.field public mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

.field public mResponseCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;

.field public final mUiCallback:Lcom/android/server/autofill/Session$2;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;Lcom/android/server/autofill/Session$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeShowing:Z

    iput-object p4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    iput-object p9, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/Session$2;

    iput-object p6, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iput-object p7, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final destroySessionLocked()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Never received an InlineSuggestionsRequest from the IME for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AutofillInlineSuggestionsRequestSession"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final handleOnReceiveImeStatusUpdated(Landroid/view/autofill/AutofillId;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(ZZ)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleOnReceiveImeStatusUpdated(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput-boolean p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeShowing:Z

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputStarted:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-eq v4, p2, :cond_2

    move v2, v3

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputStarted:Z

    iput-boolean p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeUpdateResponseToImeLocked()V

    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybeUpdateResponseToImeLocked()V
    .locals 11

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillInlineSuggestionsRequestSession"

    const-string/jumbo v1, "maybeUpdateResponseToImeLocked called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;

    if-nez v0, :cond_1

    goto/16 :goto_12

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    iget-object v1, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    goto/16 :goto_8

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v1, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v5, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "InlineFillUi"

    if-nez v5, :cond_5

    iget-object v5, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v7, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    if-le v5, v7, :cond_5

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Not showing inline suggestion when user entered more than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-direct {v0, v4}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    goto/16 :goto_8

    :cond_5
    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_11

    iget-object v7, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/autofill/Dataset;

    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "AutofillId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " not found in dataset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v7, v8}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v9

    if-nez v9, :cond_7

    const-string v7, "InlinePresentation not found in dataset"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v9}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    :goto_1
    move v7, v2

    goto/16 :goto_4

    :cond_8
    iget-object v9, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v10

    if-eqz v10, :cond_c

    iget-object v8, v10, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    if-nez v8, :cond_a

    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Explicitly disabling filter for dataset id"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    move v7, v3

    goto :goto_4

    :cond_a
    iget-boolean v7, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    if-eqz v7, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    goto :goto_4

    :cond_c
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillValue;

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v10

    if-nez v10, :cond_d

    goto :goto_3

    :cond_d
    iget-boolean v7, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    if-eqz v7, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v8}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    goto :goto_4

    :cond_f
    :goto_3
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v7

    if-nez v7, :cond_9

    goto :goto_1

    :goto_4
    if-nez v7, :cond_10

    goto :goto_5

    :cond_10
    iget-object v7, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v0, v5, v7}, Lcom/android/server/autofill/ui/InlineFillUi;->copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_11
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-direct {v0, v4}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    goto :goto_8

    :cond_12
    :goto_6
    move v5, v3

    :goto_7
    if-ge v5, v1, :cond_13

    iget-object v6, v0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/autofill/ui/InlineFillUi;->copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_13
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-direct {v0, v4}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    :goto_8
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto/16 :goto_12

    :cond_14
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v5, :cond_15

    goto/16 :goto_10

    :cond_15
    move v5, v3

    :goto_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_17

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v6}, Landroid/view/inputmethod/InlineSuggestion;->getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/inputmethod/InlineSuggestionInfo;->isPinned()Z

    move-result v6

    if-nez v6, :cond_16

    move v3, v2

    goto :goto_a

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_17
    :goto_a
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_18

    const-string v4, "AutofillInlineSuggestionsRequestSession"

    const-string/jumbo v5, "maybeNotifyFillUiEventLoked(): hasSuggestionToShow="

    const-string v6, ", mPreviousHasNonPinSuggestionShow="

    invoke-static {v5, v6, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    invoke-static {v4, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_18
    if-eqz v3, :cond_19

    iget-boolean v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/Session$2;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v4, v4, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    iget-object v6, v4, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, v4, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v4, v4, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v7, v4, v5}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception p0

    goto :goto_c

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "AutofillSession"

    const-string v7, "Error sending fill UI shown notification"

    invoke-static {v5, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    monitor-exit v6

    goto :goto_f

    :goto_c
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_19
    if-nez v3, :cond_1a

    iget-boolean v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/Session$2;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v4, v4, Lcom/android/server/autofill/Session$2;->this$0:Lcom/android/server/autofill/Session;

    iget-object v6, v4, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    iget-object v7, v4, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v4, v4, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v7, v4, v5}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception p0

    goto :goto_e

    :catch_1
    move-exception v4

    :try_start_3
    const-string v5, "AutofillSession"

    const-string v7, "Error sending fill UI hidden notification"

    invoke-static {v5, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    monitor-exit v6

    goto :goto_f

    :goto_e
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1a
    :goto_f
    iput-boolean v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    :goto_10
    iget-boolean v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v3, :cond_1b

    goto :goto_11

    :cond_1b
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v4, "AutofillInlineSuggestionsRequestSession"

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Send inline response: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :try_start_4
    iget-object v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-interface {v3, v5, v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;->onInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_11

    :catch_2
    const-string/jumbo v0, "RemoteException sending InlineSuggestionsResponse to IME"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    xor-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    :cond_1d
    :goto_12
    return-void
.end method

.method public final onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onInlineSuggestionsResponseLocked called for:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillInlineSuggestionsRequestSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/inputmethod/IInlineSuggestionsResponseCallback;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeUpdateResponseToImeLocked()V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
