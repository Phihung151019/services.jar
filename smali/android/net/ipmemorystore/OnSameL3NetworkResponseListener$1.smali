.class public final Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener$1;
.super Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$listener:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener$1;->val$listener:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "b24ee617afb80799cb35b6241f5847d786c649f3"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public final onSameL3NetworkResponse(Landroid/net/ipmemorystore/StatusParcelable;Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V
    .locals 1

    iget-object p0, p0, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener$1;->val$listener:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/net/ipmemorystore/Status;

    invoke-direct {v0, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    new-instance p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;

    invoke-direct {p1, p2}, Landroid/net/ipmemorystore/SameL3NetworkResponse;-><init>(Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V

    invoke-interface {p0, v0, p1}, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->onSameL3NetworkResponse(Landroid/net/ipmemorystore/Status;Landroid/net/ipmemorystore/SameL3NetworkResponse;)V

    :cond_0
    return-void
.end method
