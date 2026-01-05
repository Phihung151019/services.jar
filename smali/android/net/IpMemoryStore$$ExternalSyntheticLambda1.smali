.class public final synthetic Landroid/net/IpMemoryStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IpMemoryStore$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/net/IpMemoryStore$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Landroid/net/IIpMemoryStore;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p0, p1, p2}, Landroid/net/IpMemoryStore;->$r8$lambda$_y2cX-Xlq_pqq30pduKRh7dpuR8(Ljava/util/function/Consumer;Landroid/net/IIpMemoryStore;Ljava/lang/Throwable;)Landroid/net/IIpMemoryStore;

    move-result-object p0

    return-object p0
.end method
