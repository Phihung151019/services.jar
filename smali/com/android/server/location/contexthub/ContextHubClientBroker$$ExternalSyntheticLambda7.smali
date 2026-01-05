.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

.field public final synthetic f$1:Landroid/hardware/location/NanoAppMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;Landroid/hardware/location/NanoAppMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;->f$1:Landroid/hardware/location/NanoAppMessage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;->f$1:Landroid/hardware/location/NanoAppMessage;

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {v0, p1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendMessageDeliveryStatusToContextHub(BI)V

    return-void
.end method
