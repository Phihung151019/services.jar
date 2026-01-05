.class public interface abstract Landroid/hardware/weaver/V1_0/IWeaver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static getService(Z)Landroid/hardware/weaver/V1_0/IWeaver;
    .locals 5

    const-string/jumbo v0, "default"

    const-string/jumbo v1, "android.hardware.weaver@1.0::IWeaver"

    invoke-static {v1, v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/hardware/weaver/V1_0/IWeaver;

    return-object v0

    :cond_1
    new-instance v0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_2
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    return-object v0

    :catch_0
    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
