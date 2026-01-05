.class public final Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDisplayId:I

.field public final mHostInputToken:Landroid/os/IBinder;

.field public final mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field public final mOnAutofillCallback:Ljava/lang/Runnable;

.field public final mOnErrorCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

.field public final mOnInflateCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

.field public final mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field public final mSessionId:I

.field public final mStartIntentSenderFromClientApp:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda2;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    iput-object p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iget-object p2, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostInputToken()Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mHostInputToken:Landroid/os/IBinder;

    iget-object p2, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mDisplayId:I

    iget p2, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mUserId:I

    iput p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mUserId:I

    iget p1, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mSessionId:I

    iput p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mSessionId:I

    iput-object p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnAutofillCallback:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)V

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p4, p2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)V

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnInflateCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mStartIntentSenderFromClientApp:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda2;

    return-void
.end method
