.class public final Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$message:Landroid/hardware/location/NanoAppMessage;

.field public final synthetic val$ownerId:S

.field public final synthetic val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;IILandroid/hardware/location/NanoAppMessage;SILandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput-object p6, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$message:Landroid/hardware/location/NanoAppMessage;

    iput-short p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$ownerId:S

    iput p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$contextHubId:I

    iput-object p9, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    move p1, p2

    const/4 p2, 0x5

    move v0, p5

    move-object p5, p3

    move p3, p4

    move p4, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onTransact()I
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$message:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v1, v0}, Landroid/hardware/location/NanoAppMessage;->setIsReliable(Z)V

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$message:Landroid/hardware/location/NanoAppMessage;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    invoke-virtual {v1, v2}, Landroid/hardware/location/NanoAppMessage;->setMessageSequenceNumber(I)V

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v1, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-short v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$ownerId:S

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$contextHubId:I

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$message:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "ContextHubTransactionManager"

    const-string/jumbo v2, "RemoteException while trying to send a reliable message"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final onTransactionComplete(I)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {p0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ContextHubTransactionManager"

    const-string/jumbo v0, "RemoteException while calling client onTransactionComplete"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
