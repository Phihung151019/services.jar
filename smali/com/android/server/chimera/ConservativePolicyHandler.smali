.class public final Lcom/android/server/chimera/ConservativePolicyHandler;
.super Lcom/android/server/chimera/PolicyHandler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p2, p2, v0

    const-string v0, "-a"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpQuotaPPN(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public final executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
