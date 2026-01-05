.class public abstract Lcom/android/server/devicepolicy/ResolutionMechanism;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
.end method

.method public abstract resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
.end method

.method public resolve(Ljava/util/List;)Landroid/app/admin/PolicyValue;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
