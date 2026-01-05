.class public final synthetic Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkFactoryLegacyImpl;

.field public final synthetic f$1:Landroid/net/NetworkRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;->f$0:Landroid/net/NetworkFactoryLegacyImpl;

    iput-object p2, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;->f$1:Landroid/net/NetworkRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;->f$0:Landroid/net/NetworkFactoryLegacyImpl;

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;->f$1:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "releaseRequestAsUnfulfillableByAnyFactory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    invoke-virtual {v2, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    if-nez v0, :cond_0

    const-string p0, "Ignoring attempt to release unregistered request as unfulfillable"

    invoke-virtual {v2, p0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/net/NetworkProvider;->declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V

    return-void
.end method
