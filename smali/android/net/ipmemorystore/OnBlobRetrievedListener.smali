.class public interface abstract Landroid/net/ipmemorystore/OnBlobRetrievedListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static toAIDL(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    .locals 1

    new-instance v0, Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;

    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;-><init>(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    return-object v0
.end method


# virtual methods
.method public abstract onBlobRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V
.end method
