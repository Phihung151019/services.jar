.class public final Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;ZZ)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    if-eqz p5, :cond_0

    const/high16 p5, 0x400000

    :goto_0
    move v7, p5

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    goto :goto_0

    :goto_1
    const/4 v9, 0x2

    const-string/jumbo v2, "android.service.autofill.InlineSuggestionRenderService"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    return-void
.end method


# virtual methods
.method public final destroySuggestionViews(II)V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method public final getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda1;-><init>(Landroid/os/RemoteCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method public final getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-static {p1}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionRenderService;

    move-result-object p0

    return-object p0
.end method

.method public final getTimeoutIdleBindMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final handleOnConnectedStateChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->handleOnConnectedStateChanged(Z)V

    return-void
.end method

.method public final renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .locals 9

    new-instance v0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method
