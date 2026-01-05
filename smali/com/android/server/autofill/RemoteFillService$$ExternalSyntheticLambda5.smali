.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Landroid/service/autofill/FillRequest;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$1:Landroid/service/autofill/FillRequest;

    iput-object p3, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$1:Landroid/service/autofill/FillRequest;

    iget-object v6, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v5, p1

    check-cast v5, Landroid/service/autofill/FillResponse;

    move-object v3, p2

    check-cast v3, Ljava/lang/Throwable;

    sget p0, Lcom/android/server/autofill/RemoteFillService;->$r8$clinit:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda8;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v5, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$1:Landroid/service/autofill/FillRequest;

    iget-object v7, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v6, p1

    check-cast v6, Landroid/service/autofill/FillResponse;

    move-object v4, p2

    check-cast v4, Ljava/lang/Throwable;

    sget p0, Lcom/android/server/autofill/RemoteFillService;->$r8$clinit:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance v2, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda8;

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
