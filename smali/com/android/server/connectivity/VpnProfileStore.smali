.class public final Lcom/android/server/connectivity/VpnProfileStore;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public get(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;[B)Z
    .locals 0

    invoke-static {p1, p2}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->remove(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
