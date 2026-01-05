.class public final Lcom/android/server/location/contexthub/ContextHubClientBroker$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final synthetic val$broker:Lcom/android/server/location/contexthub/ContextHubClientBroker;

.field public final synthetic val$onFinishedCallback:Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;->val$onFinishedCallback:Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;->val$broker:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    return-void
.end method


# virtual methods
.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;->val$onFinishedCallback:Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;->accept(Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$2;->val$broker:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
