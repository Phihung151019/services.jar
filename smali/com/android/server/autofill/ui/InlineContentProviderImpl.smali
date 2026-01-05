.class public final Lcom/android/server/autofill/ui/InlineContentProviderImpl;
.super Lcom/android/internal/view/inline/IInlineContentProvider$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mProvideContentCalled:Z

.field public mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

.field public final mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;-><init>()V

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    iput-object p2, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    return-void
.end method


# virtual methods
.method public final onSurfacePackageReleased()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final provideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;IILcom/android/internal/view/inline/IInlineContentCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final requestSurfacePackage()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/autofill/ui/InlineContentProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
