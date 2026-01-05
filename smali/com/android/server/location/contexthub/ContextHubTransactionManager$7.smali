.class public final Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iput p4, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;->val$contextHubId:I

    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    const/4 p1, 0x4

    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onQueryResponse(ILjava/util/List;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {p0, p1, p2}, Landroid/hardware/location/IContextHubTransactionCallback;->onQueryResponse(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ContextHubTransactionManager"

    const-string/jumbo p2, "RemoteException while calling client onQueryComplete"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onTransact()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;->val$contextHubId:I

    invoke-virtual {v0, p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->queryNanoapps(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ContextHubTransactionManager"

    const-string/jumbo v1, "RemoteException while trying to query for nanoapps"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransactionComplete(I)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$7;->onQueryResponse(ILjava/util/List;)V

    return-void
.end method
