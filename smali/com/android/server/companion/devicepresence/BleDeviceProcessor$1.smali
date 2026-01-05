.class public final Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
