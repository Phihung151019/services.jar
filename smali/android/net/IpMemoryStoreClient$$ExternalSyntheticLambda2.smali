.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/net/ipmemorystore/OnStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$0:Landroid/net/IpMemoryStoreClient;

    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$2:J

    iput-wide p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$3:J

    iput p7, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$4:I

    iput-object p8, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$5:Landroid/net/ipmemorystore/OnStatusListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$3:J

    iget v6, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$4:I

    iget-object v7, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$5:Landroid/net/ipmemorystore/OnStatusListener;

    move-object v8, p1

    check-cast v8, Landroid/net/IIpMemoryStore;

    invoke-static/range {v0 .. v8}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$ZmYKgDCCOgRrpoQcjfpEnx8avws(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method
