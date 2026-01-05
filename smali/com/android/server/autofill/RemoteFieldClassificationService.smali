.class final Lcom/android/server/autofill/RemoteFieldClassificationService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/assist/classification/IFieldClassificationService;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;


# direct methods
.method public static -$$Nest$mlogFieldClassificationEvent(Lcom/android/server/autofill/RemoteFieldClassificationService;JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V
    .locals 2

    if-nez p3, :cond_0

    new-instance p0, Lcom/android/server/autofill/FieldClassificationEventLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationEventLogger;->startNewLogForRequest()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance p2, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {p2, v0, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance p2, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda7;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance p2, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p2, p4, p3}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationEventLogger;->logAndEndEvent()V

    return-void

    :cond_0
    check-cast p3, Lcom/android/server/autofill/Session;

    new-instance p0, Lcom/android/server/autofill/FieldClassificationEventLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationEventLogger;->startNewLogForRequest()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance p2, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda3;

    invoke-direct {p2, v0, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget p1, p3, Lcom/android/server/autofill/Session;->uid:I

    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget p1, p3, Lcom/android/server/autofill/Session;->mFillRequestIdSnapshot:I

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p1, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget p1, p3, Lcom/android/server/autofill/Session;->id:I

    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance p5, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p5, p4, v0}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p2, p5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/autofill/FieldClassificationEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance p4, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;

    const/4 p5, 0x2

    invoke-direct {p4, p1, p5}, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p2, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationEventLogger;->logAndEndEvent()V

    const/4 p0, -0x2

    iput p0, p3, Lcom/android/server/autofill/Session;->mFillRequestIdSnapshot:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/autofill/RemoteFieldClassificationService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.assist.classification.FieldClassificationService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    iput-object p2, v2, Lcom/android/server/autofill/RemoteFieldClassificationService;->mComponentName:Landroid/content/ComponentName;

    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "About to connect to serviceName: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillRemoteFieldClassificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1

    check-cast p1, Landroid/service/assist/classification/IFieldClassificationService;

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :try_start_0
    invoke-interface {p1, p0, p0}, Landroid/service/assist/classification/IFieldClassificationService;->onConnected(ZZ)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/service/assist/classification/IFieldClassificationService;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception calling onServiceConnectionStatusChanged("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutofillRemoteFieldClassificationService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
