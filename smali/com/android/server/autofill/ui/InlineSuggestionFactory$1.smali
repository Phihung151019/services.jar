.class public final Lcom/android/server/autofill/ui/InlineSuggestionFactory$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# virtual methods
.method public final autofill(Landroid/service/autofill/Dataset;I)V
    .locals 0

    return-void
.end method

.method public final onError()V
    .locals 1

    const-string p0, "InlineSuggestionFactory"

    const-string v0, "An error happened on the tooltip"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onInflate()V
    .locals 0

    return-void
.end method

.method public final startIntentSender(Landroid/content/IntentSender;)V
    .locals 0

    return-void
.end method
