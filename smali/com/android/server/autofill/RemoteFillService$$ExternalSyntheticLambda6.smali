.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Landroid/service/autofill/FillRequest;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$4:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;->f$1:Landroid/service/autofill/FillRequest;

    iput-object p3, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;->f$4:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v6, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;->f$1:Landroid/service/autofill/FillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;->f$4:Landroid/os/IBinder;

    check-cast p1, Landroid/service/autofill/IAutoFillService;

    sget v0, Lcom/android/server/autofill/RemoteFillService;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "calling onFillRequest() for id="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "RemoteFillService"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$1;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFillService$1;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/RemoteFillService;->maybeWrapWithWeakReference(Landroid/service/autofill/IFillCallback;)Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;

    move-result-object v0

    invoke-interface {p1, v6, v0, p0}, Landroid/service/autofill/IAutoFillService;->onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;Landroid/os/IBinder;)V

    return-object v4
.end method
