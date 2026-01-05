.class public final Lcom/android/server/broadcastradio/aidl/RadioModule$3;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$hwCloseHandle:[Landroid/hardware/broadcastradio/ICloseHandle;


# direct methods
.method public constructor <init>([Landroid/hardware/broadcastradio/ICloseHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$3;->val$hwCloseHandle:[Landroid/hardware/broadcastradio/ICloseHandle;

    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$3;->val$hwCloseHandle:[Landroid/hardware/broadcastradio/ICloseHandle;

    aget-object v1, v1, v0

    check-cast v1, Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;

    invoke-virtual {v1}, Landroid/hardware/broadcastradio/ICloseHandle$Stub$Proxy;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "BcRadioAidlSrv.module"

    const-string v4, "Failed closing announcement listener"

    invoke-static {v3, v1, v4, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$3;->val$hwCloseHandle:[Landroid/hardware/broadcastradio/ICloseHandle;

    const/4 v1, 0x0

    aput-object v1, p0, v0

    return-void
.end method
