.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;->f$0:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;->f$0:J

    check-cast p1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda8;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda8;-><init>(JI)V

    invoke-virtual {p1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    return-void

    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;->f$0:J

    check-cast p1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda8;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda8;-><init>(JI)V

    invoke-virtual {p1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
