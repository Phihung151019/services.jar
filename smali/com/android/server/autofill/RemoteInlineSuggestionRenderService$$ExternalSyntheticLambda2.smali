.class public final synthetic Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/service/autofill/IInlineSuggestionUiCallback;

.field public final synthetic f$1:Landroid/service/autofill/InlinePresentation;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$0:Landroid/service/autofill/IInlineSuggestionUiCallback;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$1:Landroid/service/autofill/InlinePresentation;

    iput p3, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$3:I

    iput-object p5, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$4:Landroid/os/IBinder;

    iput p6, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$5:I

    iput p7, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$6:I

    iput p8, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$7:I

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 9

    iget-object v1, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$0:Landroid/service/autofill/IInlineSuggestionUiCallback;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$1:Landroid/service/autofill/InlinePresentation;

    iget v3, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$2:I

    iget v4, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$3:I

    iget-object v5, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$4:Landroid/os/IBinder;

    iget v6, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$5:I

    iget v7, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$6:I

    iget v8, p0, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService$$ExternalSyntheticLambda2;->f$7:I

    move-object v0, p1

    check-cast v0, Landroid/service/autofill/IInlineSuggestionRenderService;

    invoke-interface/range {v0 .. v8}, Landroid/service/autofill/IInlineSuggestionRenderService;->renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    return-void
.end method
