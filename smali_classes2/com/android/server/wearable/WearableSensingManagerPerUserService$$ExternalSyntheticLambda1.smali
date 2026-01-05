.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;ILandroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iput p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;->f$2:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    iget v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;->f$2:Landroid/os/RemoteCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->removeConnection(I)Z

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method
