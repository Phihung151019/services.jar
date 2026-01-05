.class public final synthetic Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/window/TaskSnapshot;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$1:Landroid/window/TaskSnapshot;

    iput-object p3, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 2

    iget v0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$1:Landroid/window/TaskSnapshot;

    iget-object p0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    check-cast p1, Landroid/service/contentsuggestions/IContentSuggestionsService;

    invoke-interface {p1, v0, v1, p0}, Landroid/service/contentsuggestions/IContentSuggestionsService;->provideContextImage(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;)V

    if-eqz v1, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/window/TaskSnapshot;->removeReference(I)V

    :cond_0
    return-void
.end method
