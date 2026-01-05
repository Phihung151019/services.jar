.class public abstract Lcom/android/server/autofill/ui/InlineSuggestionFactory;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/widget/inline/InlinePresentationSpec$Builder;

    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/widget/inline/InlinePresentationSpec$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;)V

    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec;->getStyle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->setStyle(Landroid/os/Bundle;)Landroid/widget/inline/InlinePresentationSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->build()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    goto :goto_0

    :goto_1
    new-instance p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    move-result-object p3

    const/4 v3, 0x0

    invoke-direct {v1, p3, v2, v3}, Landroid/service/autofill/InlinePresentation;-><init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V

    new-instance p3, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-direct {v3, p1, v1, p3, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    new-instance p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    invoke-direct {p0, v3, v0}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    new-instance v1, Landroid/view/inputmethod/InlineSuggestionInfo;

    const/4 v4, 0x0

    const-string/jumbo v5, "android:autofill:suggestion"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    new-instance p1, Landroid/view/inputmethod/InlineSuggestion;

    invoke-direct {p1, v1, p0}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    return-object p1
.end method

.method public static createInlineSuggestions(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Z)Landroid/util/SparseArray;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p3

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v9, "InlineSuggestionFactory"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "createInlineSuggestions(source="

    const-string v2, ") called"

    invoke-static {v1, v3, v2, v9}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v10, v0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    new-instance v11, Landroid/util/SparseArray;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v11, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_6

    move-object/from16 v13, p2

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/service/autofill/Dataset;

    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "AutofillId="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not found in dataset"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v14, v2}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v2, "InlinePresentation not found in dataset"

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v18, v9

    goto :goto_4

    :cond_2
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "android:autofill:suggestion"

    goto :goto_2

    :cond_3
    const-string/jumbo v5, "android:autofill:action"

    :goto_2
    if-nez v1, :cond_5

    invoke-virtual {v14, v2}, Landroid/service/autofill/Dataset;->getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v2

    invoke-static {v10, v0, v3, v2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    move/from16 v16, v1

    move-object v7, v2

    goto :goto_3

    :cond_5
    move/from16 v16, v1

    const/4 v7, 0x0

    :goto_3
    new-instance v1, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8, v14, v12}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V

    move/from16 v2, p4

    invoke-static {v10, v12, v4, v2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;Z)Landroid/service/autofill/InlinePresentation;

    move-result-object v4

    move-object v6, v1

    new-instance v1, Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v4}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v2

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Landroid/service/autofill/InlinePresentation;->getAutofillHints()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v17}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v6

    move-object/from16 v15, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    new-instance v2, Landroid/view/inputmethod/InlineSuggestion;

    new-instance v3, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-direct {v3, v0, v9, v15, v8}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    new-instance v4, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-direct {v2, v1, v4}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    invoke-static {v14, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v11, v12, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move/from16 v1, v16

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p1

    move-object/from16 v9, v18

    goto/16 :goto_0

    :cond_6
    return-object v11
.end method

.method public static mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;Z)Landroid/service/autofill/InlinePresentation;
    .locals 1

    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getInlinePresentationSpecs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/inline/InlinePresentationSpec;

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    :cond_1
    new-instance p1, Landroid/widget/inline/InlinePresentationSpec$Builder;

    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Landroid/widget/inline/InlinePresentationSpec$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;)V

    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec;->getStyle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->setStyle(Landroid/os/Bundle;)Landroid/widget/inline/InlinePresentationSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->build()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    new-instance p1, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    move-result-object p3

    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result p2

    invoke-direct {p1, p3, p0, p2}, Landroid/service/autofill/InlinePresentation;-><init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V

    return-object p1
.end method
