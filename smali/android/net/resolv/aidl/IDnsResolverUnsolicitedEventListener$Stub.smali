.class public abstract Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onDnsHealthEvent:I = 0x1

.field static final TRANSACTION_onNat64PrefixEvent:I = 0x2

.field static final TRANSACTION_onPrivateDnsValidationEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;

    return-object v0

    :cond_1
    new-instance v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I

    const-string v1, "-1"

    iput-object v1, v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    iput-object p0, v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-interface {p0}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-interface {p0}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    if-eq p1, v2, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_4
    sget-object p1, Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;

    invoke-interface {p0, p1}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->onPrivateDnsValidationEvent(Landroid/net/resolv/aidl/PrivateDnsValidationEventParcel;)V

    goto :goto_0

    :cond_5
    sget-object p1, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/resolv/aidl/Nat64PrefixEventParcel;

    invoke-interface {p0, p1}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->onNat64PrefixEvent(Landroid/net/resolv/aidl/Nat64PrefixEventParcel;)V

    goto :goto_0

    :cond_6
    sget-object p1, Landroid/net/resolv/aidl/DnsHealthEventParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/resolv/aidl/DnsHealthEventParcel;

    invoke-interface {p0, p1}, Landroid/net/resolv/aidl/IDnsResolverUnsolicitedEventListener;->onDnsHealthEvent(Landroid/net/resolv/aidl/DnsHealthEventParcel;)V

    :goto_0
    return v2
.end method
