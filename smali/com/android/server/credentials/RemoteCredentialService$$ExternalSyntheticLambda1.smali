.class public final synthetic Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/credentials/RemoteCredentialService;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    iput-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    iget-object v5, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, p1

    check-cast v3, Ljava/lang/Void;

    move-object v4, p2

    check-cast v4, Ljava/lang/Throwable;

    sget p0, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    iget-object v6, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v4, p1

    check-cast v4, Landroid/service/credentials/BeginGetCredentialResponse;

    move-object v5, p2

    check-cast v5, Ljava/lang/Throwable;

    sget p0, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance v2, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Landroid/service/credentials/BeginCreateCredentialResponse;

    check-cast p2, Ljava/lang/Throwable;

    sget v1, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, p1, p2, p0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialResponse;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
