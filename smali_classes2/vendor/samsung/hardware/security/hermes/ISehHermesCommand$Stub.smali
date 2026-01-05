.class public abstract Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz v1, :cond_1

    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    return-object v0

    :cond_1
    new-instance v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method
