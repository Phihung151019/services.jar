.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/IIpMemoryStore;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/net/ipmemorystore/OnStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$0:Landroid/net/IIpMemoryStore;

    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$2:J

    iput-wide p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$3:J

    iput p7, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$4:I

    iput-object p8, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$5:Landroid/net/ipmemorystore/OnStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-wide v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$2:J

    iget-wide v4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$3:J

    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$0:Landroid/net/IIpMemoryStore;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    iget v6, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$4:I

    iget-object v7, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;->f$5:Landroid/net/ipmemorystore/OnStatusListener;

    invoke-static/range {v0 .. v7}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$hICnBCSsnrXREBHQ8OnhnN1ZUjs(Landroid/net/IIpMemoryStore;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V

    return-void
.end method
