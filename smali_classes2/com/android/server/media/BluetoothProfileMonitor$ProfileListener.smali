.class public final Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothProfileMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    monitor-enter v0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/16 v1, 0x15

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    iput-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    iput-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    iput-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/16 v1, 0x15

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    iput-object v2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    iput-object v2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$ProfileListener;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    iput-object v2, p0, Lcom/android/server/media/BluetoothProfileMonitor;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
