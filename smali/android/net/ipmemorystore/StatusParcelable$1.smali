.class public final Landroid/net/ipmemorystore/StatusParcelable$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Landroid/net/ipmemorystore/StatusParcelable;

    invoke-direct {p0}, Landroid/net/ipmemorystore/StatusParcelable;-><init>()V

    invoke-virtual {p0, p1}, Landroid/net/ipmemorystore/StatusParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Landroid/net/ipmemorystore/StatusParcelable;

    return-object p0
.end method
