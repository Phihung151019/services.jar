.class public final synthetic Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:Landroid/net/ResolverParamsParcel;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ResolverParamsParcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda1;->f$0:Landroid/net/ResolverParamsParcel;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/net/IDnsResolver;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda1;->f$0:Landroid/net/ResolverParamsParcel;

    invoke-interface {p1, p0}, Landroid/net/IDnsResolver;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V

    return-void
.end method
