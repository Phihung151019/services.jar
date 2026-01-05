.class public final synthetic Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:B


# direct methods
.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;->f$0:B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-byte p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;->f$0:B

    check-cast p1, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    check-cast p2, [Landroid/hardware/contexthub/HubEndpointInfo;

    :try_start_0
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toAppHubEndpointReason(B)I

    move-result p0

    invoke-interface {p1, p2, p0}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->onEndpointsStopped([Landroid/hardware/contexthub/HubEndpointInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "HubInfoRegistry"

    const-string p2, "Exception while calling onEndpointsStopped"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
