.class public final synthetic Lcom/android/server/audio/BtHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/BtHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/BtHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/BtHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/BtHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/server/audio/BtHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/BtHelper;

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/utils/BtUtils;->isSamsungWatch(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadset;)Z

    move-result v1

    :cond_0
    const-string/jumbo v0, "receiveBtEvent updateWatchConnectionState = "

    const-string v2, "AS.BtHelper"

    invoke-static {v0, v2, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/audio/BtHelper;->mVibratorManagerInternal:Lcom/android/server/vibrator/VibratorManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerInternal;->updateWatchConnectionState(Z)V

    return-void
.end method
