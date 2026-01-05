.class public final synthetic Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;->f$0:Z

    iput p1, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final execute(Landroid/net/IDnsResolver;)V
    .locals 2

    new-instance v0, Landroid/net/ResolverOptionsParcel;

    invoke-direct {v0}, Landroid/net/ResolverOptionsParcel;-><init>()V

    iget-boolean v1, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;->f$0:Z

    iput-boolean v1, v0, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z

    iget p0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-interface {p1, p0, v0}, Landroid/net/IDnsResolver;->setResolverOptions(ILandroid/net/ResolverOptionsParcel;)V

    return-void
.end method
