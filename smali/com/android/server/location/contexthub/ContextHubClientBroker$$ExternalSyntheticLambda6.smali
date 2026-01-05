.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/hardware/location/NanoAppMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/hardware/location/NanoAppMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iput-wide p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;->f$1:J

    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;->f$2:Landroid/hardware/location/NanoAppMessage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;->f$1:J

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;->f$2:Landroid/hardware/location/NanoAppMessage;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "android.hardware.location.extra.NANOAPP_ID"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "android.hardware.location.extra.MESSAGE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
