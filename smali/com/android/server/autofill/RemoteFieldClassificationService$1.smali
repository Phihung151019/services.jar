.class public final Lcom/android/server/autofill/RemoteFieldClassificationService$1;
.super Landroid/service/assist/classification/IFieldClassificationCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

.field public final synthetic val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

.field public final synthetic val$startTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/RemoteFieldClassificationService;Ljava/lang/ref/WeakReference;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

    iput-wide p3, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$startTime:J

    invoke-direct {p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final isCompleted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 6

    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    const-string/jumbo p1, "onCancellable"

    const-string v0, "AutofillRemoteFieldClassificationService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    const-string/jumbo v0, "onCancellable "

    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->weakDeref(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    iget-wide v1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$startTime:J

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$mlogFieldClassificationEvent(Lcom/android/server/autofill/RemoteFieldClassificationService;JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V

    return-void
.end method

.method public final onFailure()V
    .locals 7

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    const-string/jumbo v0, "onFailure"

    const-string v1, "AutofillRemoteFieldClassificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

    sget v1, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    const-string/jumbo v1, "onFailure "

    invoke-static {v0, v1}, Lcom/android/server/autofill/Helper;->weakDeref(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    iget-wide v2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$startTime:J

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$mlogFieldClassificationEvent(Lcom/android/server/autofill/RemoteFieldClassificationService;JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V

    return-void
.end method

.method public final onSuccess(Landroid/service/assist/classification/FieldClassificationResponse;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string/jumbo v1, "onSuccess "

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v2, "AutofillRemoteFieldClassificationService"

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSuccess Response: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "size: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo v0, "null response"

    :goto_1
    sget v3, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

    sget v2, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    invoke-static {v0, v1}, Lcom/android/server/autofill/Helper;->weakDeref(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    iget-wide v2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$startTime:J

    const/4 v5, 0x1

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$mlogFieldClassificationEvent(Lcom/android/server/autofill/RemoteFieldClassificationService;JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V

    if-nez v4, :cond_4

    return-void

    :cond_4
    check-cast v4, Lcom/android/server/autofill/Session;

    iget-object p0, v4, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    iput-object v6, p0, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

    invoke-virtual {p0}, Lcom/android/server/autofill/Session$ClassificationState;->processResponse()Z

    return-void
.end method
