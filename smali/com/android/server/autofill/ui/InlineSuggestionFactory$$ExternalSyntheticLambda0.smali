.class public final synthetic Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session$3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/Session$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/Session$3;

    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    check-cast v0, Landroid/service/autofill/FillResponse;

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    check-cast v1, Landroid/service/autofill/FillResponse;

    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    check-cast v2, Landroid/service/autofill/FillResponse;

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/autofill/Session;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/autofill/Session;->authenticate(ILandroid/content/IntentSender;Landroid/os/Bundle;I)V

    return-void
.end method
