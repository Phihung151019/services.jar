.class public final Lcom/android/server/autofill/ui/InlineFillUi;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAutofillId:Landroid/view/autofill/AutofillId;

.field public final mDatasets:Ljava/util/ArrayList;

.field public mFilterMatchingDisabled:Z

.field public mFilterText:Ljava/lang/String;

.field public final mInlineSuggestions:Ljava/util/ArrayList;

.field public final mMaxInputLengthForAutofill:I


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillId;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/service/autofill/Dataset;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFilterText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/service/autofill/Dataset;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFilterText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/view/inputmethod/InlineSuggestion;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFilterText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mMaxInputLengthForAutofill:I

    return-void
.end method


# virtual methods
.method public final copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 4

    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestion;->getContentProvider()Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestion;->getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;

    move-result-object p2

    check-cast v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    iget-object v3, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    iget-object v0, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-direct {v2, v3, v0}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-direct {v1, p2, v2}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    return-object p2
.end method
