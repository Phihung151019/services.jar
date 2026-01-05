.class public final Lcom/android/server/broadcastradio/hal2/RadioModule$3;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Proxy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    const-string/jumbo v2, "android.hardware.broadcastradio@2.0::ICloseHandle"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v0, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "BcRadio2Srv.module"

    const-string v2, "Failed closing announcement listener"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    return-void
.end method
