.class public final Lcom/android/server/autofill/ui/AutoFillUI$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic val$callback:Lcom/android/server/autofill/Session;

.field public final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field public final synthetic val$log:Landroid/metrics/LogMaker;

.field public final synthetic val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

.field public final synthetic val$response:Landroid/service/autofill/FillResponse;

.field public final synthetic val$sessionLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/Session;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/metrics/LogMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/Session;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$sessionLock:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$response:Landroid/service/autofill/FillResponse;

    iput-object p6, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    iput-object p7, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$log:Landroid/metrics/LogMaker;

    return-void
.end method


# virtual methods
.method public final log(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object p1, p1, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final onCanceled()V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$sessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/Session;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/Session;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/Session;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->requestFallbackFromFillDialog()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onResponsePicked(Landroid/service/autofill/FillResponse;)V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/Session;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    iget-object p0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/Session;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/server/autofill/Session;->authenticate(ILandroid/content/IntentSender;Landroid/os/Bundle;I)V

    :cond_0
    return-void
.end method
