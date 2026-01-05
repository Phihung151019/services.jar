.class public final synthetic Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:B


# direct methods
.method public synthetic constructor <init>(BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;->f$0:I

    iput-byte p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;->f$1:B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;->f$0:I

    iget-byte p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;->f$1:B

    check-cast p1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    return-void
.end method
