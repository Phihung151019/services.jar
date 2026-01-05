.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;->f$0:J

    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;->f$0:J

    iget v4, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;->f$1:I

    move-object v1, p1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;

    const/4 p1, 0x1

    invoke-direct {p0, v4, p1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;-><init>(IIJ)V

    invoke-virtual {v1, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)B

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JII)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    return-void
.end method
