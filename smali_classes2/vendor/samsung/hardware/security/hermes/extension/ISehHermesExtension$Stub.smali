.class public abstract Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;
    .locals 2

    sget-object v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    if-eqz v1, :cond_0

    check-cast v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    return-object v0

    :cond_0
    new-instance v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method
