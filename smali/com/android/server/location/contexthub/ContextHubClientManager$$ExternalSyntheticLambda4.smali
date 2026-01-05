.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/location/NanoAppMessage;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/location/NanoAppMessage;

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/location/NanoAppMessage;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    check-cast p1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)B

    return-void
.end method
