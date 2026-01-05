.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;

.field public final synthetic f$1:Lcom/android/server/autofill/InlineSuggestionRequestConsumer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/InlineSuggestionRequestConsumer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/Session;

    iput-object p2, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/autofill/InlineSuggestionRequestConsumer;

    iput p3, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/autofill/InlineSuggestionRequestConsumer;

    iget p0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;->f$2:I

    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;->accept(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
