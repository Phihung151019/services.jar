.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Landroid/service/autofill/SaveRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;->f$1:Landroid/service/autofill/SaveRequest;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;->f$1:Landroid/service/autofill/SaveRequest;

    check-cast p1, Landroid/service/autofill/IAutoFillService;

    invoke-static {v0, p0, p1}, Lcom/android/server/autofill/RemoteFillService;->$r8$lambda$0drfjd02UtjtR1pzZwZfvLOqncQ(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method
