.class public interface abstract Landroid/hardware/usb/V1_2/IUsb;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/usb/V1_1/IUsb;


# direct methods
.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_2/IUsb;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "android.hardware.usb@1.2::IUsb"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/hardware/usb/V1_2/IUsb;

    if-eqz v3, :cond_2

    move-object v0, v2

    check-cast v0, Landroid/hardware/usb/V1_2/IUsb;

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/hardware/usb/V1_2/IUsb$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Landroid/hardware/usb/V1_2/IUsb$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/usb/V1_2/IUsb$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_3
    if-ge v4, v3, :cond_4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_3

    move-object v0, v2

    :catch_0
    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract enableContaminantPresenceDetection(Ljava/lang/String;Z)V
.end method
